class nginx {
  package {
    "nginx":
      ensure => present,
  }
  service {
    "nginx":
      ensure => true,
      enable => true,
  }
}
