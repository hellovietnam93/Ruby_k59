class AddPhonenumberAndBirthdayToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users,:phonenumber, :string
  	remove_column :users,:birthday, :string
  	add_column :users,:birthday, :date
  end
end
