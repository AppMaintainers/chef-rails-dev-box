# [APP MAINTAINERS](http://AppMaintainers.com) DEVBOX

## Introduction
This project automates the setup of a development environment for Ruby on Rails development. It also includes numerous other web development tools to help node.js and meteor projects.

This tool is made by the [App Maintainers team](http://AppMaintainers.com) and uses Chef and Vagrant to automate the process.

## Passwords
- linux: root = "vagrant"
- mysql: root = ""
- posgresql: postgres = ""
- posgresql: vagrant = ""

## Sample Vagrant file
```ruby
Vagrant.configure("2") do |config|
  config.vm.box       = 'devbox-2-0-5'
  config.vm.box_url   = '~/Sites/chef-rails-dev-box/builds/devbox-2-0-5.box'
end
```

## Running services
- PostgreSQL
- MySQL
- MongoDB
- Redis
- Memcache
- ElasticSearch

## Installed rubies
- ree-1.8.7
- ruby-1.8.7
- ruby-1.9.3
- ruby-2.0.0
- ruby-2.1.1
 
## Other tools installed
- ImageMagick
- git
- Midnight Commander alias mc
- SQLite
- NodeJS
- PhantomJS
- RVM
- curl

## TODO
- using [Veewee](https://github.com/jedi4ever/veewee) for base box creation
- mysql server auto start
- elasticsearch proper config(it seems not working out of the box)
- vim setup in the box

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

```zsh
host $ git clone https://github.com/AppMaintainers/chef-rails-dev-box.git
host $ cd chef-rails-dev-box
host $ bundle install
host $ cd chef
host $ bundle exec librarian-chef install
host $ cd ../
host $ vagrant up
host $ vagrant package --output builds/devbox-2-0-x.box --vagrantfile builds/Vagrantfile
```

## Userful
- Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.
- [Testing memcache with telnet](https://wincent.com/wiki/testing_memcached_with_telnet)
