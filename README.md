# Reactor Developer Docs

Developer documentation for Adobe Cloud Platform Launch - https://developer.adobelaunch.com

## Issues

Found something amiss with the documentation? Let us know via an
[issue](https://github.com/Adobe-Marketing-Cloud/reactor-developer-docs/issues).

## Contributing

The documentation site is built using [Jekyll](https://jekyllrb.com), a static
website generator. While Many documentation changes can be simple and using a
markdown editor is sufficient to review changes. Sometimes it's easier to see
how things look after having been rendered. This can be achieved in one of two
ways, devloping locally, or developing using a Docker container.

Fork and clone the reactor-developer-docs repository. After making and
previewing changes, create a commit, and open a Pull Request.


### Developing locally

#### Prerequisites

- Ruby 2.6.x

#### Setup

```bash
bundle install
```

#### Build and run

Next, start Jekyll.

```bash
bundle exec jekyll serve
```

#### Preview

Open a browser to http://localhost:4000.


### Developing using a Docker container

For development environment convenience, a docker image is available from Docker
Hub.

#### Prerequisites

- Docker

#### Setup

Pull the docker image. Be sure to do this step often to obtain updated versions.

```bash
docker pull adobe/reactor-developer-docs-dev
```

#### Run the container

Note the path to the reactor-developer-docs directory. Either export the path as
`$REACTOR_DEVELOPER_DOCS_DIR` or replace it in the following command.

If a port other than `8000` is desired, be sure to change it as well.

```bash
docker run -d \
  -p 8000:4000 \
  -v $REACTOR_DEVELOPER_DOCS_DIR:/srv/docs \
  --name reactor-developer-docs-dev \
  adobe/reactor-developer-docs-dev:latest
```

#### Preview

Open a browser to http://localhost:8000.
