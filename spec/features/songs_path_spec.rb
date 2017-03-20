require 'rails_helper'

describe 'the songs path' do
  it 'will display songs' do
    song = Song.create(title: 'Hello World', lyrics: 'Lorem ipsum, my old friend')
    visit music_path
    expect(page).to have_content('Hello World')
  end
end
