#
# Cookbook Name:: chef-logstash
# Recipe:: server
#
# Copyright (C) 2014 Wouter de Vos
# 
# License: MIT
#

template "/etc/logstash/conf.d/server.conf" do
  owner "logstash"
  group "logstash"
  mode "0644"
  source "logstash.conf.erb"
  variables( :config => node[:logstash][:server] )
  notifies :restart, "service[logstash]"
end
