class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string    :name     , null: false
      t.string    :payment  , null: false
      t.string    :station  , null: false
      t.string    :rest_day , null: false
      t.string    :place    , null: false
      t.string    :open_time, null: false
      t.string    :store_url, null: false
      t.references :admin   , null: false, foreign_key: true
      t.timestamps
    end
  end
end
