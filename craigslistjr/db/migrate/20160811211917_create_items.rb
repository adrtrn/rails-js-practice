class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, presence: true
      t.integer :price, presence: true
      t.string :email, presence: true
      t.integer :category_id 
      
      t.timestamps null: false
    end
  end
end
