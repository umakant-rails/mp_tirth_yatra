class CreateTourPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :tour_places do |t|
      t.string :name

      t.timestamps
    end
  end
end
