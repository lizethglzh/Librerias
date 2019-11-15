class CreateBookStores < ActiveRecord::Migration[6.0]
  def change
    create_table :book_stores do |t|

      t.timestamps
    end
  end
end
