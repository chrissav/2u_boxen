class techops {
  
  include brewcask
  
  file { '/tmp/hello2':
      #owner   => 'root',
      #group   => 'root',
      mode    => '0666',
      content => "world\n",
  }
  
  package { 'firefox': provider => 'brewcask' }
  package { 'slack': provider => 'brewcask' }
  package { 'google-chrome': provider => 'brewcask' }
  package { 'iterm2': provider => 'brewcask' }
  package { 'sublime-text': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
  package { 'jing': provider => 'brewcask' }
  package { 'skype': provider => 'brewcask' }
  package { 'vagrant': provider => 'brewcask' }

  #making error
  #package { 'virtualbox': provider => 'brewcask' }
}