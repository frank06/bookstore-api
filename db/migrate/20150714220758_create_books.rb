class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.references :author, index: true, foreign_key: true
      t.references :publisher, polymorphic: true, index: true

      t.timestamps
    end
  end
end
