class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :date, presence: true
	validates :phone, presence: true

	validate :check_date 
	validate :check_phone

	private
	def check_date
		if self.date && self.date.year <= (Time.now.year - 90) || 
			self.date && self.date.year >= (Time.now.year - 7)
			self.errors.add :date, "Ngay sinh khong hop le"
		end
	end

	def check_phone
		if self.phone && self.phone[0] == '0' && self.phone.length == 10
			else
			self.errors.add :phone, "So dien thoai khong hop le"
		end
	end
end
