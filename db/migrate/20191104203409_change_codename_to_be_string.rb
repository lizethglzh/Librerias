class ChangeCodenameToBeString < ActiveRecord::Migration[6.0]
  def change
  	change_column :stores, :codename, :string 
  end
end
