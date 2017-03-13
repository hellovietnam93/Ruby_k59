class User < ApplicationRecord
	validates :name, presence:true, length: {maximum: 50}
	validates :email, presence:true, length: {maximum:255} 	
	validate :check_length
	validate :check_phone_length
	validate :check_head_phone
	validate :check_birthday
	private 
	def check_length
		if self.name && self.name.length<10
		self.errors.add :name, "Ten qua ngan"
		end
	end
	def check_phone_length
		if self.phone && self.phone.length!=10
		self.errors.add :phone, "So dien thoai phai 10 chu so"
		end
	end
	def check_head_phone
		if self.phone && self.phone[0].to_i!=0
		self.errors.add :phone, "So dien thoai phai bat dau bang so 0"
		end
	end
	def check_birthday
		if self.birthday && self.birthday.to_date > Date.today - 5.years || self.birthday.to_date < Date.today - 90.years
		self.errors.add :birthday, "Ngay sinh nhap khong dung"
		end
	end
end
