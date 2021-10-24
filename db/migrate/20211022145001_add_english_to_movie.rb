class AddEnglishToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :string, :test_status, :boolean, :default => true
  end
end
