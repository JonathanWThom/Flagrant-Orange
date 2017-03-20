require 'rails_helper'

describe Show do
  it { should validate_presence_of :where }
  it { should validate_presence_of :when }

  describe '#beautified_date' do
    it 'will stringify the datetime' do
      show = create(:show)
      expect(show.beautified_date).to eq("Monday, March 20, 2017 - 04:05 AM")
    end
  end

  describe '.future_shows' do
    it 'will show only future shows, from soonest to latest' do
      show1 = create(:show, when: DateTime.now - 10)
      show2 = create(:show, when: DateTime.now + 10 )
      show3 = create(:show, when: DateTime.now + 5 )
      expect(Show.future_shows).to eq([show3, show2])
    end
  end
end
