require 'rails_helper'

describe Show do
  it { should validate_presence_of :where }
  it { should validate_presence_of :performance_date }

  describe '#beautified_date' do
    it 'will stringify the datetime' do
      show = create(:show)
      expect(show.beautified_date).to eq("Monday, March 20, 2017 - 4:05 AM")
    end
  end

  describe '.future_shows' do
    it 'will show only future shows, from soonest to latest' do
      show1 = create(:show, performance_date: DateTime.now - 10)
      show2 = create(:show, performance_date: DateTime.now + 10 )
      show3 = create(:show, performance_date: DateTime.now + 5 )
      expect(Show.future_shows).to eq([show3, show2])
    end

    it "will return shows on today's date" do
      show = create(:show, performance_date: DateTime.now)
      expect(Show.future_shows).to eq([show])
    end
  end
end
