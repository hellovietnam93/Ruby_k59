class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length:{minimum: 3, maximum: 20}
  validates :password, :pass_confirmation, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validate :check_phone_number
  validate :check_birthday, if: :is_valid_birthday?
  validate :check_pass_confirmation


  private

  def check_birthday
    errors.add :birthday, "Birthday have to be between 7 and 90 years before"
  end

  def is_valid_birthday?
    if birthday
      Time.now.year - birthday.year < 7 || Time.now.year - birthday.year > 90
    end
  end

  def check_phone_number
    if phone_number
      if (phone_number[0].eql? '0') == false
        errors.add :phone_number, "Phone number have to begin with 0"
      elsif phone_number.length != 10
        errors.add :phone_number, "Phone number have to have 10 digits"
      end
    end
  end

  def check_pass_confirmation
    if (pass_confirmation.eql? password) == false
      errors.add :pass_confirmation, "Password confirmation is not similar to password"
    end
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
