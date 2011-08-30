class AddNameToPilot < ActiveRecord::Migration
  def self.up
		add_column :pilots, :name, :string
		add_column :pilots, :email, :string
		
  end

  def self.down
  end
end
