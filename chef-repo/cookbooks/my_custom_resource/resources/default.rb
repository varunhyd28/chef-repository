actions :prepare, :cleanup
default_action :cleanup
attribute :name, :kind_of => String, :name_attribute => true
attribute :working_dir, :kind_of => String, :default => "/tmp/varun"
attribute :config_file, :kind_of => String, :default => "/tmp/varun/ new.conf"
