class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  validates :phonenumber, presence: true
  validates :birthday, presence: true
  validate :check_phonenumber
  validate :check_birthday
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  private

  def check_phonenumber
    if self.phonenumber && self.phonenumber[0] != "0"
      self.errors.add :phonenumber,"Must begin with 0"
    end
    if self.phonenumber && self.phonenumber.length != 10
      self.errors.add :phonenumber,"Must have 10 numbers"
    end
  end

  def check_birthday
    if self.birthday &&
      (self.birthday.year < Time.now.year - 90 ||
        self.birthday.year > Time.now.year - 7)
      self.errors.add :birthday, "Year must from 90 years ago to 7 years ago"
    end
  end
end
