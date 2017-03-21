class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence:true
  validates :phone, presence:true
  validates :birthday, presence:true
  validate :check_phone
  validate :check_date
  has_secure_password

  private
  
  def check_phone
    if self.phone
      if self.phone.length == 10 && self.phone[0] == "0"
      else
        self.errors.add :phone, "So dien thoai phai co 10 ky tu va khong bat dau boi 0"
      end
    end
  end
 
  def check_date
    if self.birthday
      if (Time.now.year-birthday.year) < 7 || (Time.now.year-birthday.year) > 90
        self.errors.add :date, "So tuoi phai tu 7 den 90"
      end
    end
  end
end
