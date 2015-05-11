class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.references :board, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :boards
  end
end
