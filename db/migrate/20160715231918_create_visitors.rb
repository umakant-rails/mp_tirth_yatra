class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.integer :reg_no
      t.datetime :receipt_date
      t.string :religion
      t.string :name
      t.string :sex
      t.string :father_name
      t.string :address
      t.datetime :date_of_birth
      t.string :identity_name
      t.string :identity_number
      t.integer :user_id
      t.integer :parent_id
      t.string :mobile_number
      t.integer :tour_place_id
      t.integer :age
      t.timestamps
    end
  end
end
