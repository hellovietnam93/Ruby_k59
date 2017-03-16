class User < ApplicationRecord
  validates :name, presence: true, length:{minimum: 10} # validates: su dung cho method co san~
  validates :phone_number, length:{is: 10}
  validate :check_birthday , :check_phone_number # validate: su dung cho method tu dinh nghia

  private

  def check_birthday
    if self.birthday && (Time.now.year - self.birthday.year < 7 || Time.now.year - self.birthday.year > 90)
      self.errors.add :birthday, "Ngay sinh trong khoang 7 - 90 tro lai day"
    end
  end

  def check_phone_number
    if self.phone_number && (self.phone_number[0].eql? '0') == false
      self.errors.add :phone_number, "Phai co so 0 o dau"
    end
  end
end
