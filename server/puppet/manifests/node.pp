node precise64server {
  Exec {
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  }

  group { 'puppet':   ensure => present }
  group { 'www-data': ensure => present }

  include curl
  include fail2ban
  include unattended-upgrades
  include nginx
  include vim
  include sudoers

  user { 'deployer':
    ensure => present,
    comment => 'deployer user',
    home => '/home/deployer',
    managehome => true,
  }

  ssh_authorized_key { 'deployer_ssh':
    user => 'deployer',
    type => 'rsa',
    key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA4DI7uPGxzlobPqBJhKNaQIP3juGOS8Bila76s20hqJIyAL8AtLLQx9rXqQn0LZHgHbIwC6o5gsgQiv4EUHqVgg80C5iS1bwRX+fdUuQh1QaTePQqu3PDGu1QOzZU++xKV2Taw5+g8V+IM+iexcX6GUaH/YIgMGdT+c8b0MA9JBYdopDguI+M7F8LqIBfpvszJJUu7S0xsNO2rZEz1p4L/LboFvDCpsOxI3sjl7ScH97K8L6HOQh0pGfwtbd65SFB6TPFgTuF9ZF/UphB4TJXujeEODVGjQ1iyyLDLzX52JahQPZifBgyLCIxxWBS3+O5fR6Xiz1GHYZJsrna0RKrBQ==',
  }
}
