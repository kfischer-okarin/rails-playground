class CreateWorkTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :work_times do |t|
      t.date :date
      t.time :start_time
      t.integer :duration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
