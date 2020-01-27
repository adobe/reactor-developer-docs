# Reactor Developer Docs

Developer documentation for Adobe Experience Platform Launch - https://developer.adobelaunch.com

## Issues

Found something amiss with the documentation? Let us know via an
[issue](https://github.com/adobe/reactor-developer-docs/issues).

## Contributing

Contributions are welcomed! Read the [Contributing Guide](CONTRIBUTING.md) for more information.

The documentation site is built using [Jekyll](https://jekyllrb.com), a static
website generator. While many documentation changes can be simple and using a
markdown editor is sufficient to review changes, sometimes it's easier to see
how things look after being rendered. This can be achieved in one of two
ways, developing locally, or developing using a Docker container.

Fork and clone this reactor-developer-docs repository. After making and
previewing changes, create a commit, and open a Pull Request.

## Developing

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
bundle exec jekyll serve --port 4000
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

As you make changes to the files and save them, Jekyll will automatically regenerate these pages so you can view the updates in your browser.  Note that this can take 20-30 seconds.  If you'd like to see the Jekyll output as this regeneration happens, you can use the following command in your console.

```bash
docker logs -f reactor-developer-docs-dev
```

#### Preview

Open a browser to http://localhost:8000.

## Licensing

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more information.
