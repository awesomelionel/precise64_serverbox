#Manage the sudoers file
class sudoers {
  file {'/etc/sudoers':
  source => '/vagrant/server/puppet/modules/sudoers/files/sudoers',
  mode => '0440',
  owner => 'root',
  group => 'root',
  }
}
