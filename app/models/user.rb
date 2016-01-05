class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true

  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false }

  # Step 1: generate an MD hash of the user's email

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

end
