class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :description
      t.string :email
      t.boolean :isForSale
      t.boolean :isPrivateParty
      t.decimal :price
      t.string :location
      t.date :postDate

      t.timestamps
    end
  end
end
