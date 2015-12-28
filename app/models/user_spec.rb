require 'spec_helper'
describe User do
	before do
			@user = User.new(username: "Example User",password: "foobar")
	end
	subject { @user }
	describe "remember token" do
		before { @user.save }
		its(:remember_token) {puts "BLUuuee"}
	end
end
