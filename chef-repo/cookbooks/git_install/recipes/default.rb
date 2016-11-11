#
# Cookbook Name:: git_install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

remote_file "C:/#{node['git_install']['installer_name']}" do
  source "https://github.com/git-for-windows/git/releases/download/v2.10.2.windows.1/#{node['git_install']['installer_name']}"
  action :create
  not_if { File.exists?("C:/#{node['git_install']['installer_name']}")}
end

=begin
execute 'install_git' do
	command "C:/Git-2.10.2-64-bit.exe /SILENT"
end
=end

#Chef::Log.info("Addtion result is #{AddModules::Oracle.add(3, 4)}")
Chef::Log.info("Installer Name is #{node['git_install']['installer_name']}")

