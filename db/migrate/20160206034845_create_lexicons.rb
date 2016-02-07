class CreateLexicons < ActiveRecord::Migration
  def change
    create_table :lexicons do |t|
      t.string :category
      t.text :code
      t.text :description
    end
  end
end
