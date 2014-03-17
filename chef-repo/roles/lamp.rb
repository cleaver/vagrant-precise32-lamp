name 'lamp'
description 'Install LAMP'
run_list(
  "recipe[mysql::server]",
  "recipe[apache2]",
  "recipe[apache2::mod_php5]",
  "recipe[apache2::mod_rewrite]",
  "recipe[mysql]",
  "recipe[mysql::server]",
  "recipe[php]",
  "recipe[php::module_apc]",
  "recipe[php::module_gd]",
  "recipe[php::module_mysql]"
)
default_attributes(
  :mysql  => {
    :server_root_password   => "root",
    :server_repl_password   => "password",
    :server_debian_password => "password",
    :allow_remote_root      => true,
    :service_name           => "mysql",
    :basedir                => "/usr",
    :data_dir               => "/var/lib/mysql",
    :root_group             => "root",
    :mysqladmin_bin         => "/usr/bin/mysqladmin",
    :mysql_bin              => "/usr/bin/mysql",
    :conf_dir               => "/etc/mysql",
    :confd_dir              => "/etc/mysql/conf.d",
    :socket                 => "/var/run/mysqld/mysqld.sock",
    :pid_file               => "/var/run/mysqld/mysqld.pid",
    :grants_path            => "/etc/mysql/grants.sql"
  },
  :apache => {
    :default_site_enabled => "true",
    :dir                  => "/etc/apache2",
    :log_dir              => "/var/log/apache2",
    :error_log            => "error.log",
    :user                 => "www-data",
    :group                => "www-data",
    :binary               => "/usr/sbin/apache2",
    :cache_dir            => "/var/cache/apache2",
    :pid_file             => "/var/run/apache2.pid",
    :lib_dir              => "/usr/lib/apache2",
    :listen_ports         => [
      "80"
    ],
    :contact              => "ops@example.com",
    :timeout              => "300",
    :keepalive            => "On",
    :keepaliverequests    => "100",
    :keepalivetimeout     => "5"
  },
  :php => {
    :directives => {
      :memory_limit => "256M"
    }
  }
)