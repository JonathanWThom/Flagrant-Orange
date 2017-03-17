class AddWhenToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :when, :datetime
  end
end
