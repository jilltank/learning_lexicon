class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :code
      t.text :description
      t.string :category
    end
  end
end
