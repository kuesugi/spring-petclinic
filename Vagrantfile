Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-20.04"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.cpus = 4
        vb.memory = "8192"
    end
    
    config.vm.define "server1" do |server1|
        server1.vm.network "private_network", ip: "172.17.177.20"
        server1.vm.network "forwarded_port", guest: 8080, host: 8080

        server1.vm.provision "shell" do |shell|
            shell.path = "server1.sh"
        end
    end

    config.vm.define "server2" do |server2|
        server2.vm.network "private_network", ip: "172.17.177.21"
        # As the port for displaying petclinic is not specified this time,
        # I will use 8081 (used to be 8080 in previous assignment)
        server2.vm.network "forwarded_port", guest: 8081, host: 8081

        server2.vm.provision "shell" do |shell|
            shell.path = "server2.sh"
        end
    end
end