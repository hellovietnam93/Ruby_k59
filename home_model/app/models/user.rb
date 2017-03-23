require 'date'
class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true

  validate :check_length
  validate :check_pnumber
  validate :check_years

  private
  def check_pnumber
      if self.phone && self.phone.length != 10
        self.errors.add :phone, "Phone number must have 10 digit" #Add errors
      end
      if self.phone[0] != '0'
        self.errors.add :phone, "Phone number have number 0 at first" #Add errors
      end
  end

  private
  def check_years
    if Time.now.year - self.birthday.year < 7 || Time.now.year - self.birthday.year > 90
      self.errors.add :birthday, "User's age from 7 - 90 years old" #Add errors
    end
  end

  private
  def check_length
    if self.name && self.name.length < 10
      self.errors.add :name, "Too short" #Add errors
    end
  end
end
