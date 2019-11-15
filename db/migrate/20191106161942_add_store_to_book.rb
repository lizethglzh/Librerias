class AddStoreToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :store, :string
  end
end
