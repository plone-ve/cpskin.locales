#!/usr/bin/make
.PHONY: test

test:
	rm -f cpskin/locales/locales/fr/LC_MESSAGES/*.mo
	msgfmt -o cpskin/locales/locales/fr/LC_MESSAGES/cpskin.mo cpskin/locales/locales/fr/LC_MESSAGES/cpskin.po

cleanall:
	rm -rf bin develop-eggs downloads include lib parts .installed.cfg .mr.developer.cfg parts/omelette

bin/pip:
	if [ -f /usr/bin/virtualenv-2.7 ] ; then virtualenv-2.7 .;else virtualenv -p python2.7 .;fi
	touch $@

bin/buildout: bin/pip
	./bin/pip install -r requirements.txt
	touch $@

buildout: bin/buildout
	./bin/buildout -t 7

update: buildout
	bin/i18n cpskin
	bin/i18n plone
