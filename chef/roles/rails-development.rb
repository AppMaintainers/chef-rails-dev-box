name "rails-development"
description "setup for ruby on rails core development"
run_list(
  "recipe[apt]",
  "recipe[chef-locale]",
  "recipe[nfs]",
  "recipe[imagemagick::devel]",
  "recipe[preinstall]",
  "recipe[git]",
  "recipe[chef-mc]",
  "recipe[sqlite]",
  "recipe[mysql::client]",
  "recipe[mysql::server]",
  "recipe[database::mysql]",
  "recipe[postgresql::ruby]",
  "recipe[postgresql::client]",
  "recipe[postgresql::server]",
  "recipe[memcached]",
  "recipe[mongodb::10gen_repo]",
  "recipe[mongodb::default]",
  "recipe[nodejs::nodejs_from_binary]",
  "recipe[phantomjs::default]",
  "recipe[redis::server]",
  "recipe[database]",
  "recipe[rvm::vagrant]",
  "recipe[rvm::user]",
  "recipe[postinstall]"
)
