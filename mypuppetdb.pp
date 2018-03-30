class profiles::mypuppetdb {
  # Here we install and configure PuppetDB, and tell it where to
  # find the PostgreSQL database.
  # Here we configure the Puppet master to use PuppetDB,
  # telling it the hostname of the PuppetDB node
  class { 'puppetdb::database::postgresql':
    listen_addresses => 'foreman.lab.local',
    database_name    => 'puppetdb',
    database_username => 'puppetdb',
    database_password => 'puppetdb',
    manage_server    =>  true,
    postgres_version => '9.6',
  } ->
  class { 'puppetdb::server':
    database_host => 'foreman.lab.local',
    manage_firewall => false,
    node_purge_ttl => '5m',
    listen_address => '0.0.0.0',
  } ->
  class { 'puppetdb::master::config':
    puppetdb_server => 'foreman.lab.local',
    manage_report_processor => true,
    enable_reports => true,
  }
}
