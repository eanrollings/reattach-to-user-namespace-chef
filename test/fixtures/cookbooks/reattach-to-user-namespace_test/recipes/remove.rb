# Encoding: UTF-8

include_recipe 'reattach-to-user-namespace'

app_attrs = node['reattach_to_user_namespace']['app_attrs']

reattach_to_user_namespace 'defaultier' do
  source app_attrs['source'] unless app_attrs['source'].nil?
end