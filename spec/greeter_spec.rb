class RspecGreeter
	def greet
		"Hello RSpec!"
	end
end

describe "Welcome from Rspec" do
	it "should say 'Hello Rspec' when it receives the greet() message" do
		greeter = RspecGreeter.new
		greeting = greeter.greet
		greeting.should == "Hello RSpec!"
	end
end