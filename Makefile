.PHONY: build

build:
	docker run -v $(PWD):/docs -u $$(id -u):$$(id -g) sticksnleaves/graphdoc:2.4 graphdoc -e https://play.instruqt.com/graphql -o ./docs/api --force
	cp CNAME api/
