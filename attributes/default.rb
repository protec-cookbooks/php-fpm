case node['platform_family']
when "debian"
    default['php_fpm']['package'] = "php5-fpm"
    default['php_fpm']['service'] = "php5-fpm"
when "rhel", "fedora"
    default['php_fpm']['package'] = "php-fpm"
    default['php_fpm']['service'] = "php-fpm"
else
    default['php_fpm']['package'] = "php5-fpm"
    default['php_fpm']['service'] = "php5-fpm"
end
