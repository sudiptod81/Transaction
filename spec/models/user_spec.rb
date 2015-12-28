require 'spec helper'
describe User do
	before do
		@user = User.new(name: "Example User", email: "user@example.com",
		password: "foobar", password confirmation: "foobar")
	end
	subject { @user }
	describe "remember token" do
		before { @user.save }
		its(:remember token) { should not be blank }
	end
end