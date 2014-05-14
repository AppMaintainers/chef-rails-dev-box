#
# Cookbook Name:: postinstall
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#group "rbenv" do
#  action :create
#  members "vagrant"
#  gid 1100
#  append true
#end
#
#bash "chgrp and chmod" do
#  user "root"
#  cwd "/usr/local"
#  code <<-EOH
#    chgrp -R rbenv rbenv
#    chmod -R g+rwxX rbenv
#  EOH
#end

template "/home/vagrant/bash_custom_commands.txt" do
  source  "bash_custom_commands"
  owner   'vagrant'
  group   'vagrant'
  mode    0644
  action  :create
end

bash "copy bash custom commands to profile" do
  user "vagrant"
  cwd "/home/vagrant"
  code <<-EOS
    cat /home/vagrant/bash_custom_commands.txt >> /home/vagrant/.profile
  EOS
end

