---
title: Perform
labels:
  - unstable
---

# Perform a search

{% labels %}

<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Structure</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      <div class="spectrum-Table--horizontally-scrollable">
        <table class="spectrum-Table spectrum-Table--quiet">
          <thead class="spectrum-Table-head">
            <tr>
              <th class="spectrum-Table-headCell">Field</th>
              <th class="spectrum-Table-headCell" aria-sort="none">Type</th>
              <th class="spectrum-Table-headCell">Required / Optional</th>
              <th class="spectrum-Table-headCell">Description / Notes</th>
            </tr>
          </thead>
          <tbody class="spectrum-Table-body">
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell"><code>from</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell">Optional</td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>The result set offset.</li>
                  <li>Default <code>0</code>.</li>
                  <li>Minimum <code>0</code>.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell"><code>size</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell">Optional</td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>The maximum results to return.</li>
                  <li>Default <code>100</code>.</li>
                  <li>Maximum <code>100</code>.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell"><code>query</code></td>
              <td class="spectrum-Table-cell">Object</td>
              <td class="spectrum-Table-cell">Required</td>
              <td class="spectrum-Table-cell">
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:40px">document field path</td>
              <td class="spectrum-Table-cell">Object</td>
              <td class="spectrum-Table-cell">Required</td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Path: allowed characters: <code>a-z</code>, <code>*</code>, and <code>.</code></li>
                  <li>E.g. <code>attributes.name</code></li>
                  <li>At least one sub-object is required.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:80px"><code>exists</code></td>
              <td class="spectrum-Table-cell">Boolean</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>The field's existence in the document.</li>
                  <li>A <code>null</code> value for a field would not exist in the document.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:80px"><code>range</code></td>
              <td class="spectrum-Table-cell">Object</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>At least one sub-object is required.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:120px"><code>gt</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Greater than the supplied value, non-inclusive.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:120px"><code>gte</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Greater than or equal to the supplied value.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:120px"><code>lt</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Less than the supplied value, non-inclusive.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:120px"><code>lte</code></td>
              <td class="spectrum-Table-cell">Integer</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Less than or equal to the supplied value.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:80px"><code>value</code></td>
              <td class="spectrum-Table-cell">String</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>The value to use for the search query.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:80px"><code>value_operator</code></td>
              <td class="spectrum-Table-cell">String</td>
              <td class="spectrum-Table-cell"></td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Boolean logic used to interpret terms in the query <code>value</code>.</li>
                  <li>Allowed values: <code>AND</code>, <code>OR</code>.</li>
                  <li>Default value: <code>AND</code>.</li>
                  <li>May only be used in-conjuntion with <code>value</code> queries.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell"><code>sort</code></td>
              <td class="spectrum-Table-cell">Array, Object</td>
              <td class="spectrum-Table-cell">Optional</td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Order in which to sort results.</li>
                  <li>Default <code>100</code>.</li>
                  <li>Maximum <code>100</code>.</li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="padding-left:40px">document field path</td>
              <td class="spectrum-Table-cell">String</td>
              <td class="spectrum-Table-cell">Required</td>
              <td class="spectrum-Table-cell">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>Path: allowed characters: <code>a-z</code>, and <code>.</code></li>
                  <li>E.g. <code>attributes.display_name</code></li>
                  <li>Values: <code>asc</code>, <code>desc</code></li>
                </ul>
              </td>
            </tr>
            <tr class="spectrum-Table-row">
              <td class="spectrum-Table-cell" style="border-bottom: none"><code>resource_types</code></td>
              <td class="spectrum-Table-cell" style="border-bottom: none">Array, String</td>
              <td class="spectrum-Table-cell" style="border-bottom: none">Optional</td>
              <td class="spectrum-Table-cell" style="border-bottom: none">
                <ul style="margin: 0px; padding-left: 20px">
                  <li>The resource types to query.</li>
                  <li>Values: Searchable resource types.</li>
                </ul>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

{% form search.post %}

{% scenario search.perform %}
