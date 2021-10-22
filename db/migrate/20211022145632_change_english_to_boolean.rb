class ChangeEnglishToBoolean < ActiveRecord::Migration[6.1]
  def change
    add_column :english, :boolean, default: true
  end
end
