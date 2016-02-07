class DropEntriesTable < ActiveRecord::Migration
  def change
  	drop_table :entires
	end
end
