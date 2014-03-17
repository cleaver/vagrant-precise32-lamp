name 'base'
description 'Install basic tools'
run_list(
  "recipe[apt]",
  "recipe[git]",
  "recipe[ruby_build]",
  "recipe[rbenv::user]",
  "recipe[vim]",
  "recipe[zsh]",
  "recipe[oh_my_zsh]"
)
default_attributes(

    # :git    => {
    #   :prefix => "/usr/local"
    # },
  :rbenv  => {
    :user_installs => [
      {
        :user   => "vagrant",
        :rubies => [
          "1.9.3-p484"
        ],
        :global => "1.9.3-p484"
      }
    ]
  }
)