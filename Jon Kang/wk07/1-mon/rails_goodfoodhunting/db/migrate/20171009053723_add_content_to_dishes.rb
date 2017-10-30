class AddContentToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :img_url, :text
    add_column :dishes, :description, :text
  end
end
