class Car

  def initialize(model, type, capacity)
    @model = model
    @type = type
    @capacity = capacity
  end

  def drive
    puts ignite_engine
    puts "drive"
  end
  def stop
    print "stop car"
  end
  def park
    print "park"
  end

  def self.max_speed
    200
  end

private
  def pump_gas
     "pump"
  end

  def ignite_engine
     "vroom vroom"
  end

end
