# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  #config.vm.box       = 'precise32'
  #config.vm.box_url   = 'http://files.vagrantup.com/precise32.box'
  config.vm.box = "opscode-ubuntu-12.04-chef11"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box"
  config.vm.host_name = 'chef-rails-dev-box'

  #config.vm.network :hostonly, "192.168.30.00"
  #config.vm.share_folder("vagrant-root", "/vagrant", ".")#, "nfs" => true)

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
        # TODO: this config is not right yet
        'rvm' => {
          'rvmrc' => {
            'rvm_autolibs_flag' => 'disabled'
          },
          'user_installs' => [
              {
                  'user' => 'vagrant',
                  'default_ruby'  => '2.0',
                  'rubies'        => ['ree', '1.8.7', '1.9', '2.0', '2.1']
              }
          ]
        }
      }
  end
end
