#
# Cookbook Name:: instrumentio
# Recipe:: chef_client
#
# Copyright 2013, Entio LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.set['chef_client']['server_url'] = 'https://api.opscode.com/organizations/instrumentio'
node.set['chef_client']['validation_client_name'] = 'instrumentio-validator'
node.set['chef_client']['init_style'] = 'none'
node.set['chef_client']['cron'] = {
  #'minute' => '*/5',
  'minute' => '*',
  'hour' => '*',
  'log_file' => '/var/log/chef/chef-client.log',
  'use_cron_d' => true
}
%w(chef-client::delete_validation chef-client::cron).each do |recipe|
  include_recipe recipe
end

