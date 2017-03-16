class User < ApplicationRecord
	validates :name, presence: true
	validate :check_length
	validate :check_birthday
	validate :check_lengthphone
	validate :check_phone

	private
	def check_lengthphone
		if self.phone && self.phone.length!=10
			self.errors.add :lengthphone,"sdt khong hop le"
		end
		
	end

	def check_phone
		if self.phone && self.phone[0].to_i != 0
			self.errors.add :phone, "sdt khong co so 0 o dau"
		end 
	end
	

	private
	def check_length
		if self.name && self.name.length<10
			self.errors.add :name, "t0000000en qua ngan"
		end
	end
	
	def check_birthday
		if self.birthday && (Date.today -  90.years > self.birthday.to_date || Date.today - 7.years < self.birthday.to_date)
			self.errors.add :birthday, "be tuoi qua"
		end
	end
end
