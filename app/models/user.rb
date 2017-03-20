class User < ApplicationRecord
	validates :name, presence:true, length: {minimum:1, maximum: 10}
	validates :email, presence:true, length: {maximum:255} 	
	validate :check_length
	validate :check_phone_length
	validate :check_head_phone
	validate :check_birthday

	private 

	def check_phone_length
		if phone && phone.length != 10
			errors.add :phone, "So dien thoai phai 10 chu so"
		end
	end

	def check_head_phone
		if phone && phone[0].to_i != 0
			errors.add :phone, "So dien thoai phai bat dau bang so 0"
		end
	end

	def check_birthday
		if birthday && birthday.to_date > Date.today - 5.years || birthday.to_date < Date.today - 90.years
			errors.add :birthday, "Ngay sinh nhap khong dung"
		end
	end
end
