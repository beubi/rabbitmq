#
# Cookbook Name:: rabbitmq
# Provider:: killall
#

action :kill do
  bash 'rabbitmq_kill' do
    code <<-EOH
      if pgrep rabbitmq-server; then pkill rabbitmq-server; fi
      if pgrep -f '.*erlang.*rabbitmq.*'; then pkill -f '.*erlang.*rabbitmq.*'; fi
      exit 0
    EOH
  end
end
