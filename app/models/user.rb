class User < ApplicationRecord
	validates :name, presence: true
  	validates :email, presence: true
  	validates :phone, presence:true, length: {is:10}
  	validates :birthday, presence:true
  	validate :valid_phone, :valid_birthday
  	private
  	def valid_phone
  		if self.phone && self.phone[0] != '0'
  			self.errors.add :phone, "SDT phai bat dau bang so 0"
  		end
  	end
  	private
  	def valid_birthday
  		if self.birthday && (Time.now.year - self.birthday.year < 7 || Time.now.year - self.birthday.year > 90)
  			self.errors.add :birthday, "7 <= Tuoi <= 90"
  		end
  	end
end
