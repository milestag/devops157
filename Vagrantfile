Vagrant.configure("2") do |config|
  config.vm.box = "gusztavvargadr/w16s-iis"
  config.vm.communicator = "winrm"
  config.vm.network "private_network", ip: "192.168.56.10"
  config.vm.provision "shell", path: "cope.ps1"
end

