require 'time'
class AngleCalculator
  def self.calc(hours,minutes=nil)
    if hours.is_a? DateTime and minutes.nil? 
      return self.compute(hours.hour, hours.minute)
    end
    if !hours.is_a? Integer or !minutes.is_a? Integer
      raise 'Inputs are not integers'
    end
    if hours < 0 or hours > 23 or minutes < 0 or minutes > 59
      raise 'Hours or minutes are out of range'
    end
    self.compute(hours,minutes)
  end
  def self.compute(hours,minutes)
    if hours > 11
      hours = hours - 12
    end
    h = self.hours_angle(hours,minutes)
    m = self.minutes_angle(minutes)
    m > h ? (m-h) : (h-m)
  end
  def self.hours_angle(hours,minutes)
    (hours*30)+((30/60.0)*minutes)
  end
  def self.minutes_angle(minutes)
    minutes*6
  end
end


