class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true,format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
	validates :phonenumber,length:{is:10},format:{with:/\A0[a-z\d\-.]+\z/i}    
	validate :valid_date
		private
		def valid_date
			errors.add :birthday,"Ngay sinh khong hop le " if (self.birthday)&&(self.birthday>Date.today-7.years)||(self.Birthday<Date.today-90.years)
		end
end
