name             "php-fpm"
maintainer       "Protec Innovations"
maintainer_email "dev@protecinnovations.co.uk"
license          "All rights reserved"
description      "Installs/Configures php-fpm"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.3"

%w{ debian ubuntu mint redhat centos amazon }.each do |os|
    supports os
end

%w{ php }.each do |cb|
  depends cb
end

attribute "php_fpm/package",
    :display_name => "Package name",
    :description => "The name of the Package to install PHP-FPM",
    :default => "php5-fpm"

attribute "php_fpm/service",
    :display_name => "Service name",
    :description => "The name of the Service for PHP-FPM",
    :default => "php5-fpm"
