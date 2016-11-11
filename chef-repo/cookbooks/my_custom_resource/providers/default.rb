action :prepare  do
	Chef::Log.info("Im in prepare action")
=begin
	directory new_resource.working_dir
	file new_resource.config_file do
		action :create
	end
=end
end

action :cleanup do
	Chef::Log.info("Im in cleanup action #{new_resource.working_dir}")
=begin
	file new_resource.config_file do
		action :delete
	end
	directory new_resource.working_dir do
		action :delete
		recursive true
	end
=end
end