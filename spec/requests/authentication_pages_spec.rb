require_relative '../spec_helper'
describe "Authentication" do
  subject { page }
  describe "signin" do
    before { visit signin_path }
    describe "with invalid information" do
      before { click button "Sign in" }
      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill in "Email", with: user.email
        fill in "Password", with: user.password
        click button "Sign in"
      end
      it { should have selector('title', text: user.name) }
      it { should have link('Profile', href: user path(user)) }
      it { should have link('Sign out', href: signout path) }
      it { should not have link('Sign in', href: signin path) }
    end
  end
end
