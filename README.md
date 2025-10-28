# go-ddd-template

This is a Go DDD service template for use with `gonew`.

## Setup

1. Copy the environment file:
   ```
   cp .env.example .env
   ```

2. Update versions in `.env`:
   - `GO_VERSION`: Set to the latest stable Go version (e.g., `1.24.4`).

3. Update `go.mod`:
   - Change the `go` directive to match `GO_VERSION`.

4. Run `make lint -install` to install the latest linters.

## Usage

- `make lint`: Run linters
- `make test`: Run tests
- `make openapi`: Generate OpenAPI specs

## Updating Versions

When using this template in the future:
- Check for the latest Go version at https://golang.org/dl/
- Update `GO_VERSION` in `.env`
- Update `go.mod` accordingly
- The CI and Docker will automatically use the updated version
