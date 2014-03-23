class unattended-upgrades {
  package {
    "unattended-upgrades":
      ensure => present,
  }
  file {
    "/etc/apt/apt.conf.d/10periodic":
    source => "/vagrant/server/puppet/modules/unattended-upgrades/files/10periodic",
    mode => 644,
    owner => root,
    group => root,
  }
}
