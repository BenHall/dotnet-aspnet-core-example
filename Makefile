.PHONY: dev

dev:
	docker run -it -v $(shell pwd):/src -p 5000:5000 -w /src microsoft/dotnet:1.1.1-sdk
