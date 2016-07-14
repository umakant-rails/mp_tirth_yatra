class CreateYatras < ActiveRecord::Migration[5.0]
  def change
    create_table :yatras do |t|
      t.string :name
      t.datetime :schedule_date

      t.timestamps
    end
  end
end
