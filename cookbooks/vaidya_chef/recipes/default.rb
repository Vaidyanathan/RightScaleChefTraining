#
# Cookbook Name:: vaidya_chef
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rs_utils_marker :begin

require 'yaml'
log "HELLO"

package_name = value_for_platform(
 ["centos", "redhat"] => {"default" => "httpd"}
 ["ubuntu", "debian"] => { "default" => "apache2" }
  )

package package_name do
action :install
end

log "The package that will be installed is #{package_name}

log "The input from the dashboard is #{node[:vaidya_chef][:custom_input]}"

log node.to_yaml
rs_utils_marker :end


