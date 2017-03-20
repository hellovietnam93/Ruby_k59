class User < ApplicationRecord
	validates :name, presence:true, length: {minimum:1, maximum: 100}
	validates :email, presence:true, length: {maximum:255} 
	validate :check_phone_length
	validate :check_head_phone
	has_secure_password
	validates :password, presence:true, length: {minimum: 6}

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
																									BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

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
end
