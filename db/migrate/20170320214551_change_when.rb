class ChangeWhen < ActiveRecord::Migration[5.0]
  def change
    rename_column :shows, :when, :performance_date
  end
end
