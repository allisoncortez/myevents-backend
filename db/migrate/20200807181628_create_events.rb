class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :startTime
      t.datetime :endTime
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
