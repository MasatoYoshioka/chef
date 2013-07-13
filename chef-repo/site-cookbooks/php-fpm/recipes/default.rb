#
# Cookbook Name:: php-fpm
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package "php-fpm" do
	action :install
end
service "php-fpm" do
	supports :status =>true,
					 :restart => true
	action [ :enable,
					 :start ]
end
template "www.conf" do
	path "/etc/php-fpm.d/www.conf"
	source "www.conf.erb"
		owner "root"
		group "root"
		mode 0644
		notifies :restart,
		'service[php-fpm]'
end
