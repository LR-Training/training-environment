Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true

  config.vm.synced_folder "home", "/home/vagrant/"
  config.vm.synced_folder ".aptget", "/var/cache/apt/archives/"


  config.vm.network :forwarded_port, host: 4567, guest: 4567
  config.vm.network :forwarded_port, host: 5000, guest: 5000

  config.vm.network :forwarded_port, host: 8081, guest: 8080
  config.vm.network :forwarded_port, host: 5432, guest: 5432

  config.vm.provision :shell, :path => 'provision'

end
