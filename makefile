include .env
export

.PHONY: openapi
openapi: openapi_http

.PHONY: openapi_http
openapi_http:
	@./scripts/openapi-http.sh service_name internal/service_name/ports ports

.PHONY: lint
lint:
	@go-cleanarch
	@./scripts/lint.sh service_name

.PHONY: fmt
fmt:
	goimports -l -w internal/

test:
	@./scripts/test.sh service_name .test.env