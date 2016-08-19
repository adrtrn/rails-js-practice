class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :content
      t.integer :votes, default: 0
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
