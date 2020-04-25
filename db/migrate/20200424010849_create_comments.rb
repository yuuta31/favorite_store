class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string     :title 
      t.float      :rate  
      t.string     :text  
      t.references :user  , foreign_key: true
      t.references :post  , foreign_key: true
      t.timestamps
    end
  end
end
