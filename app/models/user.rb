class User < ActiveRecord::Base
  has_secure_password
  has_friendship

  before_validation :default_values

  validates :email, uniqueness: true, length: { in: 2..150}, presence: true
  validates :first_name, length: { in: 2..50}, presence: true
  validates :last_name, length: { in: 2..75}, presence: true

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :tweets

  private
  def default_values
    self.image = "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/" if self.image == ""
  end

  def self.confirm(params)
    @user = User.where("email ILIKE ?", params[:email]).first
    @user.try(:authenticate, params[:password])
  end

end
