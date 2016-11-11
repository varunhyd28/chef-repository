#class instance variables - static methods
module MyPackage
	class Sample_class
		attr_accessor :temp_value
		def initialize(temp_value)
			@temp_value = temp_value
		end
		def self.my_method
			puts "This is static method"
		end
		def non_staticMethod
			puts " This is non static method"
		end
	end
end

instance = MyPackage::Sample_class.new("Hello")

MyPackage::Sample_class.my_method


	



=begin
## program 1 : Getter Methods
class Oracle_vagrant_Image

	def initialize(temp_value)
		puts "Inside constructor"
		@my_variable = temp_value
	end
	def myGet
		@my_variable
	end
end
=end


=begin
## program 2 :Usage of getter and setter methods
class Oracle_vagrant_Image

	def initialize(temp_value)
		puts "Inside constructor"
		@my_variable = temp_value
	end
	def myGet
		@my_variable
	end
	def mySet(new_value)
	@my_variable = new_value
	end
	
end

instance1 = Oracle_vagrant_Image.new("chef_image")
instance2 = Oracle_vagrant_Image.new("chef2_image")
instance2.mySet("docker_instance")

puts instance1.myGet
puts instance2.myGet

puts "type of the object = #{instance1.class}"
=end


=begin
##Program 3 : Usage of aatribute accessor
class Oracle_vagrant_Image
  attr_accessor :my_variable
	def initialize(temp_value)
		puts "Inside constructor"
		@my_variable = temp_value
	end
end

instance1 = Oracle_vagrant_Image.new("chef_image")
instance2 = Oracle_vagrant_Image.new("chef2_image")
#instance2.mySet("docker_instance")
instance1.my_variable = "docker_variable"
puts instance1.my_variable

instance2.my_variable = "vagrant_variable"
puts instance2.my_variable
=end


=begin
## Program 4 : Usage of Modules (Packages)
module Oracle_Repo
	class Oracle_vagrant_Image
		attr_accessor :my_variable
		def initialize(temp_value)
			puts "Inside constructor"
			@my_variable = temp_value
		end
	
	end
	class Oracle_vagrant_Image2
		attr_accessor :my_variable
		def initialize(temp_value)
			puts "Inside constructor"
			@my_variable = temp_value
		end
	
	end
end

instance1 = Oracle_Repo::Oracle_vagrant_Image.new("chef_image")
instance2 = Oracle_Repo::Oracle_vagrant_Image.new("chef2_image")
instance3 = Oracle_Repo::Oracle_vagrant_Image2.new("3rd Instance")
#instance2.mySet("docker_instance")
instance1.my_variable = "docker_variable"
puts instance1.my_variable

instance2.my_variable = "vagrant_variable"
puts instance2.my_variable

puts instance3.my_variable
=end

=begin
## Program 5: Exception handling using raise keyword
foo = "Hello"
puts foo
raise "This is an error" #program will stop here, it will not continue further
bar = "Goodbye"
puts "#{bar}"
=end

=begin
##Program 6 : raise the exception using fucntions
class Oracle
	def sample_method
	raise "This is broken"
	puts "After raise exception keyword, which will not get print"
	end
end

instance = Oracle.new
instance.sample_method
=end


=begin
## Program 7 : Catching the exception using rescue keyword
class Oracle
	def sample_method
	raise "This is broken"
	puts "After raise exception keyword, which will not get print"
	end
end

instance = Oracle.new
begin
	instance.sample_method
rescue
	puts "Exception handled here"
end
=end

=begin
## Program 8 : Inheritance Concept
module OracleInc
	class Oracle
		attr_accessor :oracle_level
		def initialize(oracle_level)
		@oracle_level = oracle_level
		end
	end
end
class WebLogic < OracleInc::Oracle
end
instance = OracleInc::Oracle.new(10)
instance2 = WebLogic.new(20)

puts instance.oracle_level
puts instance2.oracle_level
=end

=begin
# Program 9 : Userdefined Exception

class SeriousProblem < Exception
end

class Oracle
	def break_stuff
	raise SeriousProblem.new("There is a serious problem")
	end
end

foo = Oracle.new

begin
	foo.break_stuff
rescue SeriousProblem => ex #Which we are now handling
	puts "#{ex.message}"
end
=end


=begin
##Program 10 : Calling modules from the class

module AddModules
	def add(a,b)
	a+b
	end
	def multiply(a,b)
	a*b
	end
end

class SampleClass
	include AddModules
	attr_accessor :a, :b
	def initialize(a,b)
		@a = a
		@b = b
	end
	def add_numbers
		add(@a, @b)
	end
	def multiply_number
		multiply(@a, @b)
	end
end

instance = SampleClass.new(3,4)
puts "Addition result is #{instance.add_numbers}"
puts "Multiply result is #{instance.multiply_number}"
=end

=begin
## Program 11 : class instance variables - static methods
module MyPackage
	class Sample_class
		attr_accessor :temp_value
		def initialize(temp_value)
			@temp_value = temp_value
		end
		def self.my_method
			puts "This is static method"
		end
		def non_staticMethod
			puts " This is non static method"
		end
	end
end

instance = MyPackage::Sample_class.new("Hello")

MyPackage::Sample_class.my_method
=end

