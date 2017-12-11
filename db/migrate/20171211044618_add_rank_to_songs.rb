class AddRankToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :rank, :integer, default: 1
  end
end
