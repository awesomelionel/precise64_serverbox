class fail2ban {
  package {
    "fail2ban":
      ensure => present,
  }
}
