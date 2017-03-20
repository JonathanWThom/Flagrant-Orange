require 'rails_helper'

describe 'the shows path' do
  it 'will display all future shows' do
    show1 = create(:show, performance_date: DateTime.now + 10)
    show2 = create(:show, where: 'Key Arena', performance_date: DateTime.now - 10)
    visit shows_path
    expect(page).to have_content('The Moda Center')
  end
end
