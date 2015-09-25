class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :address
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
