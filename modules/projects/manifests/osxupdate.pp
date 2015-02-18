# Public: Install updates from Apple
class projects::osxupdate {
  exec {
    'OSX Software Update':
      command  => 'softwareupdate -i -a',
      schedule => 'update_schedule',
      timeout  => 0,
      user     => 'root'
  }

  schedule { 'update_schedule':
    period => 'weekly'
  }
}