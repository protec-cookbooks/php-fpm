#
# Cookbook Name:: php-fpm
# Recipe:: default
#
# Copyright 2013, Protec Innovations
#
# Licened under BSD Licence
#

pkgs = [ node['php_fpm']['package'] ]
pkgs.each do |pkg|
    package pkg do
        action :upgrade
    end
end

template "#{node['php_fpm']['conf_dir']}/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode "0644"
end

service node['php_fpm']['service'] do
    supports :status => true, :restart => true, :reload => true
    action [ :enable, :start ]
end
