class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
    	t.integer :quantity
    	t.references :book, foreign_key: true
    	t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
