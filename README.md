# AADL Catalog Stations

This repository contains basic configuration and policies for running our chrome-based catalog kiosks.

### About the platform

* Ubuntu server w/ minimal window manager
* Chrome in incognito mode w/ various policies
* Ansible for config management

### Using the code

* While the ansible playbook will be pretty specific to our needs (sites allowed, homepage, etc), it should be easily modified to other places.

### Testing with Vagrant

A vagrant file is provided to try out the configuration. You will need:

* [Vagrant](https://www.vagrantup.com/) installation with Virtualbox
* Ansible

To try it out:
* Clone the repository and do a `vagrant up`
* Once the box is installed and provisioned do a `vagrant reload` to reboot the VM and boot with all the changes

### Contributing

If you use these stations please feel free to open an issue with suggestions or areas for improvement. 

Note the following: At this time the stations will remain locked down to research based sites. There may be a time in the future where it is something closer to a short timed email / online workstation setup but with current demand we are sticking with resources only for now.
