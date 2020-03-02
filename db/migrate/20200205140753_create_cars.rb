class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :modelname
      t.integer :fee
      t.integer :payable
      t.integer :duration
      t.string :representative
      t.text :description

      t.timestamps
    end
  end
end
