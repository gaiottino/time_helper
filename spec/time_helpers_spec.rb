require 'spec_helper'

describe TimeHelper do
  describe '#minutes' do
    it 'converts minutes to seconds' do
      1.minute.should == 60
      2.minutes.should == 120
    end
  end
  
  describe '#hours' do
    it 'converts hours to seconds' do
      1.hour.should == 60 * 60
      2.hours.should == 2 * 60 * 60
    end
  end
    
  describe '#days' do
    it 'converts days to seconds' do
      1.day.should == 24 * 60 * 60
      2.days.should == 2 * 24 * 60 * 60
    end
  end
  
  describe '#ago' do
    it 'subtracts seconds' do
      at_time Time.utc(1964, 04, 17) do
        one_second_ago = Time.utc(1964, 04, 16, 23, 59, 59)
        1.second.ago.should == one_second_ago
        (Time.now - 1.second).should == one_second_ago
      end
    end
    
    it 'subtracts minutes' do
      at_time Time.utc(1964, 04, 17) do
        thirty_minutes_ago = Time.utc(1964, 04, 16, 23, 30)
        30.minutes.ago.should == thirty_minutes_ago
        (Time.now - 30.minutes).should == thirty_minutes_ago
      end
    end

    it 'subtracts hours' do
      at_time Time.utc(1964, 04, 17) do
        twelve_hours_ago = Time.utc(1964, 04, 16, 12)
        12.hours.ago.should == twelve_hours_ago
        (Time.now - 12.hours).should == twelve_hours_ago
      end
    end

    it 'subtracts days' do
      at_time Time.utc(1964, 04, 17) do
        three_days_ago = Time.utc(1964, 04, 14)
        3.days.ago.should == three_days_ago
        (Time.now - 3.days).should == three_days_ago
      end
    end
  end
  
  describe '#from_now' do
    it 'adds seconds' do
      at_time Time.utc(1964, 04, 17) do
        one_second_from_now = Time.utc(1964, 04, 17, 0, 0, 1)
        1.second.from_now.should == one_second_from_now
        (Time.now + 1.second).should == one_second_from_now
      end
    end

    it 'adds minutes' do
      at_time Time.utc(1964, 04, 17) do
        thirty_minutes_from_now = Time.utc(1964, 04, 17, 0, 30)
        30.minute.from_now.should == thirty_minutes_from_now
        (Time.now + 30.minute).should == thirty_minutes_from_now
      end
    end

    it 'adds hours' do
      at_time Time.utc(1964, 04, 17) do
        twelve_hours_from_now = Time.utc(1964, 04, 17, 12)
        12.hours.from_now.should == twelve_hours_from_now
        (Time.now + 12.hours).should == twelve_hours_from_now
      end
    end

    it 'adds days' do
      at_time Time.utc(1964, 04, 17) do
        three_days_from_now = Time.utc(1964, 04, 20)
        3.days.from_now.should == three_days_from_now
        (Time.now + 3.days).should == three_days_from_now
      end
    end
  end
end
