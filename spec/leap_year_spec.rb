require 'leap_year'

describe Leapyear do
  it 'Is an instance of the leapyear class' do
    expect(subject).to be_instance_of (Leapyear)
  end

  describe '#is_leap_year?' do

    it 'Should return true when passed year 2000' do
      expect(subject.is_leap_year?(2000)).to eq true
    end

    it 'Should return false when passed year 1700' do
      expect(subject.is_leap_year?(1700)).to eq false
    end

    it 'Should return true when passed year 2012' do
      expect(subject.is_leap_year?(2012)).to eq true
    end

    it 'Should return false when passed year 2009' do
      expect(subject.is_leap_year?(2009)).to eq false
    end
  end

    describe '#leap_years_between' do

      it 'It will return an array of [2000,2004] when passed 2000 and 2005' do
        expect(subject.leap_years_between(2000,2005)).to eq [2000,2004]
      end

      it 'It will return an array of [1952,1956,1960,1964,1968] when passed 1950 and 1970' do
        expect(subject.leap_years_between(1950,1970)).to eq [1952,1956,1960,1964,1968]
      end

      it 'It will return an array of [] when passed 2001 and 2003' do
        expect(subject.leap_years_between(2001,2003)).to eq []
      end
    end

    describe '#closest_leap_year' do
      it 'It will respond to the method closest_leap_year' do
        expect(subject).to respond_to(:closest_leap_year).with(1).argument
      end

      it 'It will return 2004 when passed 2000' do
        expect(subject.closest_leap_year(2000)).to eq 2004
      end

      it 'It will return 2012 when passed 2011' do
        expect(subject.closest_leap_year(2011)).to eq 2012
      end

      it 'It will return 1984 when passed 1980' do
        expect(subject.closest_leap_year(1980)).to eq 1984
      end
    end
end
