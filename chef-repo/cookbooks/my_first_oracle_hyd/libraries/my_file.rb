=begin
module AddModules
	class Oracle
		def self.add(a,b)
			a+b
		end
	end
end
=end
def getSystemInfo
=begin
	nodename = data_bag('user-details')
	nodename = nodename.map do |item-id|
		nodename = data_bag_item('user-details', 'item-id')
		nodename['node'] == node.name ? nodename : nil
	end.compact
=end
	nodename = search('user-details', "id:#{node.name}")
	Chef::Log.info("Found #{nodename.count} data_bags for node:#{node.name}")
	nodename
end 
