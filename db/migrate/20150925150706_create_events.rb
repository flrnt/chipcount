class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :buy_in
      t.datetime :start_date
      t.datetime :end_date
      t.string :game
      t.string :format
      t.string :structure
      t.references :festival, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
