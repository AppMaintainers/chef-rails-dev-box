name "rails-development"
description "setup for ruby on rails core development"
run_list(
  "recipe[apt]",
  "recipe[chef-locale]",
  "recipe[nfs]",
  "recipe[imagemagick::rmagick]",
  "recipe[preinstall]",
  "recipe[git]",
  "recipe[chef-mc]",
  "recipe[sqlite]",
  "recipe[mysql::client]",
  "recipe[mysql::ruby]",
  "recipe[mysql::server]",
  "recipe[postgresql::ruby]",
  "recipe[postgresql::client]",
  "recipe[postgresql::server]",
  "recipe[memcached]",
  "recipe[mongodb::10gen_repo]",
  "recipe[mongodb::default]",
  "recipe[nodejs::install_from_binary]",
  "recipe[phantomjs::default]",
  "recipe[database]",
  "recipe[rvm::vagrant]",
  "recipe[rvm::user]",
  "recipe[postinstall]"
)
