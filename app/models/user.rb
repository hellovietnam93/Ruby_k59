class User < ApplicationRecord
  before_save {email.downcase!}
  validates :name, presence: true, length: {minimum: 10}
  validates :phone, presence: true, length: {minimum: 10}
  validates :birthday, presence: true
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validate :check_pnumber
  validate :check_years

  has_secure_password
  validates :password, presence: true, length: {minimum:6}

  private

  def check_pnumber
    if self.phone && self.phone[0] != "0"
      self.errors.add :phone, "Phone number have number 0 at first"
    end
  end

  def check_years
    years = Time.now.year - self.birthday.year
    if self.birthday && (years < 7 || years > 90)
      self.errors.add :birthday, "User's age from 7 - 90 years old"
    end
  end

end
