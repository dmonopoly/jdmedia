class AddNameToCategoryAndGenre < ActiveRecord::Migration
  def self.up
    add_column :categories, :name, :string
    add_column :genres, :name, :string
  end

  def self.down
    remove_column :categories, :name
    remove_column :genres, :name
  end
end
