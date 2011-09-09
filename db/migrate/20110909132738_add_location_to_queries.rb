class AddLocationToQueries < ActiveRecord::Migration
  def self.up
    add_column :queries, :location, :string
  end

  def self.down
    remove_column :queries, :location
  end
end
