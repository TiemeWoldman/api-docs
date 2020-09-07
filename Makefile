.PHONY: build

build:
	docker run -v $(PWD):/docs -u $$(id -u):$$(id -g) sticksnleaves/graphdoc graphdoc -e https://play.instruqt.com/graphql -o ./docs --force
