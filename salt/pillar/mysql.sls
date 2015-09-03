mysql:
  server:
    # root_password: False - to have root@localhost without password
    root_password: root
    user: mysql
    # my.cnf sections changes 
    mysqld:
      # you can use either underscore or hyphen in param names
      bind-address: 0.0.0.0
      log_bin: /var/log/mysql/mysql-bin.log
      port: 3307
      binlog_do_db: foo
      auto_increment_increment: 5
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  # Manage databases
  database:
    - kamailio
  schema:
    kamailio:
      load: True
      source: salt://kamailio/schema.sql

  # Manage users
  # you can get pillar for existent server using scripts/import_users.py script
  user:
    frank:
      password: 'somepass'
      host: localhost
      databases:
        - database: foo
          grants: ['select', 'insert', 'update']
        - database: bar
          grants: ['all privileges']
    bob:
      password_hash: '*6C8989366EAF75BB670AD8EA7A7FC1176A95CEF4'
      host: localhost
      databases:
        - database: foo
          grants: ['all privileges']
          grant_option: True
        - database: bar
          table: foobar
          grants: ['select', 'insert', 'update', 'delete']
    nopassuser:
      password: ~
      host: localhost
      databases: []

  # Override any names defined in map.jinja
  lookup:
    server: mysql-server
    client: mysql-client
    service: mysql-service
    python: python-mysqldb