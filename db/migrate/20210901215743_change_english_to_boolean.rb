class ChangeEnglishToBoolean < ActiveRecord::Migration[6.1]
  def change
    # change_column :movies, :english, :boolean, default: true
    remove_column :movies, :english, :string
    add_column :movies, :english, :boolean, default: true
  end
end
