Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true

  config.vm.network :forwarded_port, host: 4567, guest: 4567
  config.vm.network :forwarded_port, host: 8080, guest: 8080
  config.vm.network :forwarded_port, host: 5432, guest: 5432


  config.vm.provision :shell, :path => 'provision'

end
