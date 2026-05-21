# datahub-project/homebrew-tap

Homebrew tap for the [DataHub](https://docs.datahub.com/) CLI.

## Install

```sh
brew install datahub-project/tap/datahub
datahub --version
```

(First-time users can equivalently `brew tap datahub-project/tap && brew install datahub`.)

## Connectors

This formula installs the **core CLI only** — connectors (Snowflake, BigQuery,
Looker, etc.) are not bundled, to keep the install lean. To add connectors,
install them into the brew-managed venv:

```sh
$(brew --prefix datahub)/libexec/bin/pip install 'acryl-datahub[snowflake,bigquery,looker]'
```

The full list of available extras lives at
<https://pypi.org/project/acryl-datahub/>.

## Updates

A scheduled workflow polls PyPI hourly and opens a PR via `brew bump-formula-pr`
when a new `acryl-datahub` release lands. Resources are refreshed automatically.

## License

Apache-2.0. The formula wraps the upstream
[`acryl-datahub`](https://pypi.org/project/acryl-datahub/) package from the
[datahub-project/datahub](https://github.com/datahub-project/datahub) repo.
