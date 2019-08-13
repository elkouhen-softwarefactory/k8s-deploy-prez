all: index.adoc
	bundle exec asciidoctor-revealjs index.adoc

watch:
	fswatch -o src | xargs -n1 -I{} $(MAKE) all