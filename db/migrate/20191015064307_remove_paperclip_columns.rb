class RemovePaperclipColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :songs, :audio_file_name
    remove_column :songs, :audio_content_type
    remove_column :songs, :audio_file_size
    remove_column :songs, :audio_updated_at
  end
end
