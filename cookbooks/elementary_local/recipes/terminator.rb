#
# Cookbook:: elementary_local
# Recipe:: terminator
#
# Copyright:: 2017, Aravind Kumar
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

# Updates the APT cache
apt_update "update" do
  action :update
  only_if { node["terminator"]["action"] == "install" }
end

# Installs Terminator package
package node["terminator"]["name"] do
  action node["terminator"]["action"].to_sym
end