class ChangeBirthdayColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users,:birthday, :string
  	add_column :users,:birthday, :date
  end
end
