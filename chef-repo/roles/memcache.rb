name "memcache"
description "Add memcached and PHP support"
run_list(
    "recipe[php::module_memcache]",
    "recipe[memcached]",
)