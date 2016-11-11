#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Chef::Log.info("List of files are #{Helper.listFiles}")
chef_gem 'mixlib-shellout'
Helper.listFiles
Helper.osName

if %w{ubuntu debian}.include?(node['platform'])
	Helper.ubuntuName
elsif %w{oracle solaris}.include?(node['platform'])
	Helper.linuxName
else
	Chef::Log.info("Invalid OS")
end
		
