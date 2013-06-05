# Chat application using Express and NowJS  
before you run, you need [salty-vagrant](https://github.com/saltstack/salty-vagrant) plugin for [Vagrant](http://www.vagrantup.com/)  
just run the following command in your terminal if you haven´t installed

    $ vagrant plugin install vagrant-salt

also you need presice32 box installed
	
	$ vagrant box add precise32 http://files.vagrantup.com/precise32.box

finally

    $ git clone git://github.com/rauluranga/VagrantTest.git 
    $ vagrant up

Test this application in your browser at: http://localhost:3200/chat 

*you can found the original source code for this app at: https://github.com/danielstockton/nodejs-chat-example
