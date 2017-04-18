class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email, case_sensitive: false
  validates :name, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 3 }

  def authenticate_with_credentials(email, password)
    user = User.find_by_email(email)

    if user && user.authenticate(password)
      session[:user_id] = user.id
      user
    end
  end
end
