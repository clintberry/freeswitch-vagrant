
freeswitch-prerequisites:
  pkg.installed:
    - pkgs:
      - python-software-properties

freeswitch-deb:
  pkgrepo.managed:
    - humanname: FreeSWITCH PPA
    - name: deb http://files.freeswitch.org/repo/deb/debian/ wheezy main
    - dist: wheezy
    - file: /etc/apt/sources.list.d/freeswitch.list
    - key_url: http://files.freeswitch.org/repo/deb/debian/freeswitch_archive_g0.pub
    - require_in:
      - pkg: freeswitch-meta-vanilla

  # pkg.latest:
  #   - name: freeswitch-meta-vanilla
  #   - refresh: True

freeswitch:
  pkg.installed:
    - name: freeswitch-meta-vanilla
  service:
    - running
    - enable: True
    - watch:
      - pkg: freeswitch-meta-vanilla