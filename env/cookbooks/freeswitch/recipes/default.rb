#Update dialplan xml with this template
template "/tmp/install.sh" do
  source "install.sh.erb"
  mode 0755
  owner "root"
  group "root"
end

execute "Install Freeswitch" do
  command "bash /tmp/install.sh"
end

execute "Start Freeswitch" do
  command "/usr/local/freeswitch/bin/freeswitch -nc"
end