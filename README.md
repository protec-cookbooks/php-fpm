Description
===========

A Package that installs PHP-FPM

Requirements
============

 * Chef 0.10+
 * PHP Cookbook

Platforms
=========

 * Debian, Ubuntu
 * CentOS, Red Hat, Fedora

Tested on:

 * Ubuntu 12.04, Ubuntu 12.10, Ubuntu 13.04

Attributes
==========

See the `attributes/default.rb` for default values.

 * `node['php_fpm']['package']` - The package name to install PHP-FPM
 * `node['php_fpm']['service']` - The Service name for PHP-FPM

Usage
=====

```json
{ "run_list": ["recipe[php-fpm]"] }
```

This will install PHP-FPM on the system
