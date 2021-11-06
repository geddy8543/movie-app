class AddDirectorToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :first_name, :string
    add_column :movies, :last_name, :string
    add_column :movies, :age, :integer
    add_column :movies, :gender, :string
  end
end
