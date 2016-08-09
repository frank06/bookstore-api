class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.references :author, foreign_key: true
      t.references :publisher, polymorphic: true

      t.timestamps
    end
  end
end
