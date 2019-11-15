class CreateJoinTableBooksStores < ActiveRecord::Migration[6.0]
  def change
    create_table :books_stores do |t|
      t.integer :book_id
      t.integer :store_id
      t.integer :quantity
      t.index [:book_id, :store_id]
      t.index [:store_id, :book_id]
    end
  end
end



