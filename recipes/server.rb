#
# Cookbook Name:: mysqlserver
# Recipe:: server
#
# Author:: Venkatesh Ainalli (<venkatesh@itapp.com>)
#
# Copyright (C) 2015, ITapp Software, Inc.s
#
#
# All rights reserved - Do Not Redistribute



#Install mysql client

mysql_client 'default' do
	action :create
	not_if {node['platform_family' == 'windows']}
end

#Install mysql2 gem

mysql2_chef_gem 'default' do
  action :install
end

  # The following is required for the mysql community cookbook to work properly
  include_recipe 'selinux::disabled' if node['platform_family'] == 'rhel'

db = node['mysqlserver']['database']

#create mysql service and start

mysql_service db['instance_name'] do
	port db['port']
	version db['version']
	initial_root_password db['root_password']
	action [:create, :start]
end

socket = "/var/run/mysql-#{db['instance_name']}/mysqld.sock"

#creating link for socket

  socket = "/var/run/mysql-#{db['instance_name']}/mysqld.sock"

  if node['platform_family'] == 'debian'
    link '/var/run/mysqld/mysqld.sock' do
      to socket
      not_if 'test -f /var/run/mysqld/mysqld.sock'
    end
  elsif node['platform_family'] == 'rhel'
    link '/var/lib/mysql/mysql.sock' do
      to socket
      not_if 'test -f /var/lib/mysql/mysql.sock'
    end
  end
