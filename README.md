# Vai

A Vagrant provisioning plugin to output a usable Ansible inventory to use outside Vagrant.

## Installation

```
vagrant plugin install vai
```

## Usage
Add something like this to your vagrant file
```ruby
config.vm.provision :vai do |ansible|
  ansible.inventory_dir='path/to/output/inventory/'
  #optional
  ansible.inventory_filename='vagrant_ansible_inventory'
  ansible.groups = {
    'group1' => ['box1','box2'],
    'parentGroup1:children'     => ['group1']
  }
end
```
The provisioner will create the file `vagrant_ansible_inventory` in the given directory.

## Contributing

1. Fork it ( https://github.com/MatthewMi11er/vai/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
