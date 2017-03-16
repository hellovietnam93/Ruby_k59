class User < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, length:{maximum: 10}
  validate :check_name
  validate :check_phone_number_start
  validate :check_birthday


  private
  def check_name
    if self.name && self.name.length < 4
      self.errors.add :name, "name too short"
    end
  end

  private
  def check_phone_number_start
      if self.phone_number && self.phone_number[0] == "0"
        self.errors.add :phone_number, "start with 0"
      end
  end

  private
  def check_birthday
      if self.birthday
        if Date.today - 90.years > self.birthday.to_date || self.birthday.to_date > Date.today - 7.years
          self.errors.add :birthday, "errors birthday"
        end
      end
  end
end
