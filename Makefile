.PHONY: build clean help

build: 
	@echo "Building the project..."
	@hugo --minify -d docs 
	@echo "Done."
## Clean the public folder
clean:
	@echo "Cleaning public and resources directory..."
	@rm -rf public resources 
	@echo "Done."
	
## Show help for each target
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^##' $(MAKEFILE_LIST) | sed 's/^## //'