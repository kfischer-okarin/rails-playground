class AddIndexesToWorkTimes < ActiveRecord::Migration[7.0]
  def change
    add_index :work_times, :date
    add_index :work_times, [:date, :user_id]
  end
end
