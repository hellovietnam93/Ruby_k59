class AddBirthdayToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :birthday, :datetime
  end
end
