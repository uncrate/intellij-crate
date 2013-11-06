intellij_tar_filename = File.basename(node['intellij_ultimate_edition']['download_url'])
intellij_tar_filepath = "#{Chef::Config['file_cache_path']}/#{intellij_tar_filename}"
intellij_extract_path = "#{Chef::Config['file_cache_path']}/intellij/#{node['intellij_ultimate_edition']['checksum']}"
intellij_install_path = "#{node['intellij_ultimate_edition']['install_path']}/#{node['intellij_ultimate_edition']['install_dir']}"

include_recipe "ark"

ark node['intellij_ultimate_edition']['install_dir'] do
  url node['intellij_ultimate_edition']['download_url']
  path node['intellij_ultimate_edition']['install_path']
  checksum node['intellij_ultimate_edition']['checksum']
  owner node['uncrate']['user']
  group node['uncrate']['user']
  mode 0755
  action :put
end

template "/usr/share/applications/#{node['intellij_ultimate_edition']['shortcut_name']}.desktop" do
  source "intellij_ultimate_edition.desktop.erb"
  mode "0644"
end