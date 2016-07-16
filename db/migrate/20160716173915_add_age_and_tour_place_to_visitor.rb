class AddAgeAndTourPlaceToVisitor < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :age, :integer
    add_column :visitors, :tour_place, :string
    add_column :users, :district_id, :integer
  end
end
