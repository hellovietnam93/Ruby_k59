class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence:true
	validates :phone, presence:true
	validates :date, presence:true
	attr_accessor :test
	#if (self.name && self.email &&self.phone && self.date)
	#	@test=true
	#end 
	#@test=false
	#if self.name==true && self.email && self=phone==true && self.date==true
	#	@test=true
	#end
	validate :check_length_phone
	private
	def check_length_phone
		if self.name && self.email && self.phone && self.date && self.phone.length != 10 && phone[0]!=0
			self.errors.add :phone, "So dien thoai phai co 10 ky tu hoac ky tu bat dau phai bang 0"
		end
	end

	validate :check_date
	private
	def check_date
		if self.name && self.email && self.phone && self.date && ((2017-date)<7 || (2017-date)>90)
			self.errors.add :date, "So tuoi phai tu 7 den 90"
		end
	end
end