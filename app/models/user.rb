class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:line]

  def self.from_omniauth(auth)
    if auth.provider == "line"
      user = User.find_or_create_by(line_id: auth.uid)
      user.update(name: auth.info.name, image_url: auth.info.image)
      user
    end
  end

  def email_required?
    false
  end

  def password_required?
      false
  end
end
