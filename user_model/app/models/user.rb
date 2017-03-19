class User < ApplicationRecord
	validates :name, presence: true
	validates :phonenumber, presence: true
	validates :birthday, presence: true
	validate :check_length
	validate :check_phonenumber
	validate :check_birthday
	def check_length
		if self.name && self.name.length < 10
			self.errors.add :name, "Too short"
		end
	end

	def check_phonenumber
		if self.phonenumber && self.phonenumber[0] != '0' 
			self.errors.add :phonenumber,"Must begin with 0"
		end
		if self.phonenumber && self.phonenumber.length != 10
			self.errors.add :phonenumber,"Must have 10 numbers"
		end
	end

	def check_birthday
		if self.birthday && self.birthday.year > 2010 
			self.errors.add :birthday, "Year must from 1920 to 2010"
		end
		if self.birthday && self.birthday.year < 1920
			self.errors.add :birthday, "Year must from 1920 to 2010"
		end
	end
end
