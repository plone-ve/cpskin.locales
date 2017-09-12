#!/usr/bin/make
.PHONY: test

test:
	rm -f cpskin/locales/locales/fr/LC_MESSAGES/*.mo
	msgfmt -o cpskin/locales/locales/fr/LC_MESSAGES/cpskin.mo cpskin/locales/locales/fr/LC_MESSAGES/cpskin.po


cleanall:
	rm -rf bin develop-eggs downloads include lib parts .installed.cfg .mr.developer.cfg parts/omelette
