class User < ApplicationRecord
  validates :name, presence: true
  validates :phone, length:{maximum:10}
  validate :check_phone, :check_birth
  private
  def check_birth
    if self.birth && (Time.now.year-self.birth.year>90 || Time.now.year-self.birth.year<7)
      self.error.add :name, "thoi gian tu 7 den 90"
      end
  end

  def check_phone
    if self.phone && self.phone.first != '0'
      self.errors.add :name, "so dau dien thoai bat dau la 0"
      end
    end
end
