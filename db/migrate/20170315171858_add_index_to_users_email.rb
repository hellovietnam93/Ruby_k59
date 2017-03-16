class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
  	 add_index :users, :birth, :date
  	 add_index :users, :phone, :name, :string
  	 
  end
end
