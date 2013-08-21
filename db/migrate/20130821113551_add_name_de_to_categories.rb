class AddNameDeToCategories < ActiveRecord::Migration
  def change
	add_column :categories, :name_de, :string  
  end
end
