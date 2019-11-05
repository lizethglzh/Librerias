class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :codename
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
