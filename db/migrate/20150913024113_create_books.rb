class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.decimal :price, precision: 5, scale: 2, null: false
      t.references :author, index: true, foreign_key: true, null: false
      t.references :publisher, polymorphic: true, index: true, null: false

      t.timestamps null: false
    end
  end
end
