Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.define "cyf"
  config.vm.hostname = "cyf"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.customize ["modifyvm", :id, "--vram", "128","--graphicscontroller", "vboxsvga"]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end  
end
