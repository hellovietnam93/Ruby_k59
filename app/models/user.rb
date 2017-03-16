class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence:true
	validates :phone, presence:true
	validates :date, presence:true
	attr_accessor :test
	#@test=false
	#if (self.name && self.email &&self.phone && self.date)
	#	@test=true
	#end 
	validate :check_phone
	private
	def check_phone
		if (self.name && self.email &&self.phone && self.date)
			if (self.phone.length==10 && self.phone[0]=="0")
			else
				self.errors.add :phone, "So dien thoai phai co 10 ky tu va khong bat dau boi 0"
			end
		end
	end

	validate :check_date
	private
	def check_date
		if self.name && self.email && self.phone && self.date
			if ((Time.now.year.to_i-date)<7 || (Time.now.year.to_i-date)>90)
				self.errors.add :date, "So tuoi phai tu 7 den 90"
			end
		end
	end
end