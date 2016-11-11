#
# Cookbook Name:: my_first_oracle_hyd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
Chef::Log.info("This is my first reciepe new changes")
Chef::Log.info("Addtion result is #{AddModules::Oracle.add(3, 4)}")

directory '/tmp/varun/abc/def/ghi' do
	owner 'root'
	group 'root'
	mode '0755'
	recursive true
	action :create
end

bash 'install_something' do
  user 'root'
  cwd '/tmp/varun'
  code <<-EOH
  mkdir -p xyz/zab
  EOH
end

Chef::Log.info("My Kernel Name is #{node['kernel']['name']}")
Chef::Log.info("My Kernel ip address  is #{node['ipaddress']}")

template '/tmp/varun/abc/def/ghi/motd.txt' do
  source 'moto.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
     :sudoers_groups => node["my_first_oracle_hyd"]["sudo"][:groups],
     :sudoers_users => node["my_first_oracle_hyd"]["sudo"][:users]
  })
end
=end



nodedata = getSystemInfo
Chef::Log.info "My data bag info #{nodedata['id']}"
Chef::Log.info "My data bag info #{nodedata['username']}"
Chef::Log.info "My data bag info #{nodedata['passwd']}"

=begin
user-details.each do |nodename|
Chef::Log.info "My data bag info #{nodename['hdd']}"
Chef::Log.info "My data bag info #{nodename['ram']}"
Chef::Log.info "My data bag info #{nodename['rom']}"
end
=end
