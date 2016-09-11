class User < ActiveRecord::Base
  has_secure_password

  before_validation :default_values

  private
  def default_values
    self.image = "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/" if self.image == ""
  end

  def self.confirm(params)
    @user = User.where("email ILIKE ?", params[:email]).first
    @user.try(:authenticate, params[:password])
  end

end
