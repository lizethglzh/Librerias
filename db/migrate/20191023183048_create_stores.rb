class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.integer :codename
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
