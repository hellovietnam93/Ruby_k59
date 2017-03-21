class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :name, presence: true, length:{minimum: 3, maximum: 20}
  validates :email, presence: true, length: {maximum: 255},
    uniqueness: {case_sensitive: false}
  validate :check_phone_number
  validate :check_birthday, if: :is_valid_birthday?

  private
  def check_birthday
    errors.add :birthday, "Birthday have to be between 7 and 90 years before"
  end

  def is_valid_birthday?
    birthday &&
      (Time.now.year - birthday.year < 7 || Time.now.year - birthday.year > 90)
    end
  end

  def check_phone_number
    if phone_number
      if !phone_number[0].eql? '0'
        errors.add :phone_number, "Phone number have to begin with 0"
      elsif phone_number.length != 10
        errors.add :phone_number, "Phone number have to have 10 digits"
      end
    end
  end

end
