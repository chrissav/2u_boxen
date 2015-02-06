class people::csavadel {
  #include emacs   # requires emacs module in Puppetfile
  #include sparrow # requires sparrow module in Puppetfile

  include projects::techops

  # $home     = "/Users/${::boxen_user}"
  # $my       = "${home}/my"
  # $dotfiles = "${my}/dotfiles"
  
  # file { $my:
  #   ensure  => directory
  # }

  # repository { $dotfiles:
  #   source  => 'csavadel/dotfiles',
  #   require => File[$my]
  # }
}