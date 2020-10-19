require 'singleton'
require_relative 'alert_block'
require_relative 'filters_tag'
require_relative 'form_tag'
require_relative 'scenario_tag'
require_relative 'errors_tag'
require_relative 'labels_tag'

Jekyll::Hooks.register :site, :pre_render do |site|
  pages = site.config['environment'] != 'internal' ? filter_internal_pages(site.pages) : site.pages
  site.pages = pages

  site.config['hierarchy'] = generate_hierarchy(site)
end

def directory_hash(site, path, name=nil)
  name = name || path.split('/').last
  display_name = name.split(%r{_\s*}).map(&:capitalize).join(' ')
  data = {
    'name' => name,
    'display_name' => display_name,
    'path' => path
  }
  data['documents'] = documents = []
  data['children'] = children = []

  return unless File.exist? path

  Dir.entries(path).sort.each do |entry|
    next if (entry == '..' || entry == '.')
    full_path = File.join(path, entry)
    if File.directory?(full_path)
      children << directory_hash(site, full_path, entry)
    else
      page = site.pages.find { |d| d.relative_path == full_path }
      documents << page if page
    end
  end

  order_directive = site.config.dig('section_orders', path) || []
  data['children'].sort_by! do |child|
    [order_directive&.index(child['name']) || 50, child['name']]
  end

  data['documents'].sort_by! do |doc|
    is_overview = doc.data['title'] == 'Overview' ? -1 : 0
    order_attr = doc.data['order'] || -1
    title_attr = doc.data['title'] || ''
    [is_overview, order_attr, title_attr]
  end

  return data
end

def generate_hierarchy(site)
  site.config['sections'].map do |k|
    directory_hash(site, k)
  end
end

def filter_internal_pages(pages)
  pages.select do |p|
    return true unless p.data
    p.data.has_key?('internal') ? p.data['internal'] != true : true
  end
end

def sort_hash_by_keys(hash)
  raise ArgumentError unless hash.is_a? Hash
  Hash[hash.sort_by { |key, val| key.to_s } ]
end

class ApiSpecification
  include Singleton

  attr_reader :spec

  def initialize
    json = File.read('api_specification.json')
    @spec = JSON.parse(json)
  end

  def endpoint(ep)
    @spec['endpoints'].find { |e| e['name'] == ep.strip }
  end

  def errors
    @spec['errors']
  end

  def filters
    @spec['filterable_attributes']
  end

  def form(form_name)
    @spec['forms'][form_name]
  end

  def scenario(scenario_name, endpoint)
    method = endpoint&.fetch('methods')&.first

    scenario_select_by_name_endpoint_method(scenario_name, endpoint, method) ||
      scenario_select_by_endpoint_method(endpoint, method) ||
      scenario_select_by_name(scenario_name)
  end

  def scenario_select_by_name_endpoint_method(name, endpoint, method)
    return unless name && endpoint && method
    @spec['scenarios'].find do |r|
      r['name'] == name &&
        r['endpoint'] == endpoint['path'] &&
        r['method'] == method
    end
  end

  def scenario_select_by_endpoint_method(endpoint, method)
    return unless endpoint && method
    @spec['scenarios'].find do |r|
      r['endpoint'] == endpoint['path'] &&
        r['method'] == method
    end
  end

  def scenario_select_by_name(name)
    @spec['scenarios'].find { |s| s['name'] == name }
  end

  def schema(resource)
    @spec.dig('schemas', "fixtures/_models/#{resource}.json")
  end

  def response(scenario)
    scenario['response']
  end

  def response_code(scenario)
    scenario['response_code']
  end
end

Liquid::Template.register_tag('alert', Jekyll::AlertBlock)
Liquid::Template.register_tag('filters', Jekyll::FiltersTag)
Liquid::Template.register_tag('form', Jekyll::FormTag)
Liquid::Template.register_tag('scenario', Jekyll::ScenarioTag)
Liquid::Template.register_tag('errors', Jekyll::ErrorsTag)
Liquid::Template.register_tag('labels', Jekyll::LabelsTag)
