class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password_hash, presence: true
  validates :location, presence: true

  #double check many-to-many through? syntax??
  has_many :vegetables, source: UserVeggies

  def password
      @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate?(plain_text_password)
    self.password == plain_text_password
  end

end
