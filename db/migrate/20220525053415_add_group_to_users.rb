class AddGroupToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :group, foreign_key: true
  end
end
