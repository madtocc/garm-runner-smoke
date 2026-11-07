# garm-runner-smoke

Scratch repository for testing self-hosted GitHub Actions runners (GARM + garm-provider-docker).
The workflow in `.github/workflows/smoke-test.yml` runs on `${{ vars.CI_RUNNER || 'ubuntu-latest' }}`.
