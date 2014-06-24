
prerequisites:
  pkg.installed:
    - pkgs:
      - build-essential
      - autoconf
      - git
      - unixodbc-dev
      - zlib1g-dev
      - libjpeg-dev
      - libncurses5-dev
      - libssl-dev
      - libsqlite3-dev
      - libspeexdsp-dev
      - libspeex-dev
      - libldns-dev
      - libedit-dev
      - pkg-config
      - libcurl4-nss-dev
      - libpcre3-dev
      - python-dev

freeswitch-src:
   git.latest:
     - name: git://git.freeswitch.org/freeswitch.git
     - target: /usr/local/src/freeswitch
     - rev: {{ pillar['freeswitch']['version'] }}


freeswitch-bootstrap:
  cmd.run:
    - name: /usr/local/src/freeswitch/bootstrap.sh
    - cwd: /usr/local/src/freeswitch
    - unless: freeswitch -v


freeswitch-configure:
  cmd.run:
    - name: /usr/local/src/freeswitch/configure --enable-core-odbc-support
    - cwd: /usr/local/src/freeswitch
    - unless: freeswitch -v
