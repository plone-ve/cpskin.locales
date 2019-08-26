.. contents::

Introduction
============

Locales package for cpskin


Usage
=====

To generate and merge translations (there are 3 domains), run ::

    bin/i18n plone
    bin/i18n plone.app.event
    bin/i18n cpskin

Be aware that all .py files are excluded of plone and plone.app.event domains
and that cpskin.agenda is the only package included when generating
plone.app.event domain files.


Tests
=====

This package is tested using Travis CI. The current status is :

.. image:: https://travis-ci.org/IMIO/cpskin.locales.png
    :target: http://travis-ci.org/IMIO/cpskin.locales
