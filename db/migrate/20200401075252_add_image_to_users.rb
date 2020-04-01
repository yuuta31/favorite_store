class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string, unique: true
  end
end
