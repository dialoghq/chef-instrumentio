#
# Cookbook Name:: instrumentio
# Recipe:: esx
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

# 5.0 guest is backwards compatible to ESXi 4.0 U0.
# see http://partnerweb.vmware.com/comp_guide2/sim/interop_matrix.php
node.set['vmware']['esx']['tools']['version'] = '5.0latest'
include_recipe 'vmware::tools'

