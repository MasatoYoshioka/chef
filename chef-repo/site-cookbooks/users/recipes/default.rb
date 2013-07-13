#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'www' do
	comment 'www'
	home '/home/www'
	shell '/bin/bash'
	password '$1$i9IrFlDL$Ey4if4iw8wko0kBLKZTK31'
	supports :manage_home => true
	action :create
end
