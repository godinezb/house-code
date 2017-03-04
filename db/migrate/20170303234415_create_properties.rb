class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :type
      t.string :title
      t.string :address
      t.string :zipcode
      t.string :country
      t.text :notes

      t.timestamps
    end
  end
end
