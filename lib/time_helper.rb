module TimeHelper
  SECOND = 1.freeze
  MINUTE = (60 * SECOND).freeze
  HOUR   = (60 * MINUTE).freeze
  DAY    = (24 * HOUR).freeze

  def second
    self * SECOND
  end
  alias :seconds :second

  def minute
    self * MINUTE
  end
  alias :minutes :minute

  def hour
    self * HOUR
  end
  alias :hours :hour

  def day
    self * DAY
  end
  alias :days :day
  
  def ago(time = Time.now)
    time - self
  end

  def since(time = Time.now)
    time + self
  end
  alias :from_now :since
end

already_included_methods = TimeHelper.instance_methods.map { |method| method if 1.respond_to?(method)}.compact
if already_included_methods.empty?
  class Numeric
    include TimeHelper
  end
else
  already_included_methods.each do |method|
    puts "WARNING: Numeric has already been altered to include a method called #{method}. TimeHelper will not be included"
  end
end
