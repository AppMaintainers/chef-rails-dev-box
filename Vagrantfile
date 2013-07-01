# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box       = 'precise32'
  config.vm.box_url   = 'http://files.vagrantup.com/precise32.box'
  config.vm.host_name = 'chef-rails-dev-box'

  config.vm.network :hostonly, "192.168.30.00"
  config.vm.share_folder("vagrant-root", "/vagrant", ".", "nfs" => true)

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["chef/cookbooks", "chef/site-cookbooks"]
    chef.roles_path     = [[:host, "chef/roles"]]
    chef.data_bags_path = [[:host, "chef/data_bags"]]

    chef.add_role "rails-development"
    chef.json = {
        :mysql => {
          :server_root_password   => '',
          :server_debian_password => '',
          :server_repl_password   => ''
        },
        "postgresql" => {
          "password" => {
            "postgres" => ""
          }
        },
        "rbenv" => {
          "global"  => "2.0.0-rc2",
          "rubies" => [ "2.0.0-rc2", "1.8.7-p374", "1.9.3-p448" ],
          "gems" => {
            "1.8.7-p374" => [
                { 'name' => 'bundler' }
            ],
            "1.9.3-p448" => [
                { 'name' => 'bundler' }
            ],
            "2.0.0-rc2" => [
                { 'name' => 'bundler' }
            ]
          }
        }
      }
  end
end
