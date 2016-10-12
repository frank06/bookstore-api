class CreatePublishingHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :publishing_houses do |t|
      t.string :name
      t.decimal :discount, precision: 2, scale: 2

      t.timestamps
    end
  end
end
