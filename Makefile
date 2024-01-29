
export JEKYLL_VERSION=latest

build:
	docker run --rm \
  		--volume="$(PWD):/srv/jekyll" \
  		-it jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll build --baseurl /

serve:
	python3 -m http.server --directory $(PWD)/_site/
