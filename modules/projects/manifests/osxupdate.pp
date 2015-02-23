# Public: Install updates from Apple
class projects::osxupdate {

  include osx::global::disable_key_press_and_hold

  include osx::global::tap_to_click

  include osx::dock::autohide

  include osx::finder::show_hidden_files

  # schedule period set to weekly
  # include osx::software_update

  # exec {
  #   'OSX Software Update':
  #     command  => 'softwareupdate -i -a',
  #     schedule => 'update_schedule',
  #     timeout  => 0,
  #     user     => 'root'
  # }

  schedule { 'update_schedule':
    period => 'weekly'
  }

  include osx::global::disable_key_press_and_hold

  class { 'osx::dock::hot_corners':
    top_right    => 'Dashboard',
    bottom_right => 'Start Screen Saver',
  }

}