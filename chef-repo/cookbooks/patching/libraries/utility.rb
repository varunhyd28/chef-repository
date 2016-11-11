require 'mixlib/shellout'
class Helper
	def self.listFiles
		list = Mixlib::ShellOut.new("ls -lrt")
		list.run_command
		Chef::Log.info(list.stdout)
	end
	def self.osName
		os_name = Mixlib::ShellOut.new("uname -s")
		os_name.run_command
		Chef::Log.info(os_name.stdout)
	end
	def self.linuxName
		linuxName = Mixlib::ShellOut.new("echo This is vagrant Linux")
		linuxName.run_command
		Chef::Log.info(linuxName.stdout)
	end
	def self.ubuntuName
		ubuntuName = Mixlib::ShellOut.new("echo This is vagrant ubuntu")
		ubuntuName.run_command
		Chef::Log.info(ubuntuName.stdout)
	end


end