exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'], # Add any additional paths where pip3 might be installed
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"', # Checks if Flask 2.1.0 is already installed
  require => Package['python3-pip'],         # Ensures python3-pip is installed before attempting to install Flask
}

