name "redis"
description "Add Redis support"
run_list(
  "recipe[redis]"
)
default_attributes(
  :redis  => {
    :bind        => "127.0.0.1",
    :port        => "6379",
    :config_path => "/etc/redis/redis.conf",
    :daemonize   => "yes",
    :timeout     => "300",
    :loglevel    => "notice"
  }
)