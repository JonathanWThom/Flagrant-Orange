class ChangeShowDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :shows, :description, :text
  end
end
