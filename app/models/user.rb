class User < ApplicationRecord

  validate :valid_phone
  validate :valid_birthday

  def valid_birthday
    if( (Time.now.year-birthday.year)>90.years || (Time.now.year-birthday.year)<7.years )
      errors.add :birhtday, "ngay sinh tu 7-90 nam truoc" 
    end
  end
  def valid_phone
    if(phone.length != 10 || phone[0] !='0')
      errors.add :phone, "invalid phone"
    end
  end
end
