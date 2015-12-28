class User < ActiveRecord::Base
  attr_accessible :username, :password
  has_secure_password
  before_save { |user| user.username = username.downcase }
  before_save :create_remember_token
  private
  def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end
end
