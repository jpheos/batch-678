class Car
  attr_accessor :color

  def initialize(color)
    @color = color
    @engine_started = false
  end

  def engine_started?
    @engine_started
  end

  def start_engine!
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end

  private

  def start_fuel_pump
    ap "je suis dans #{__method__}"
  end

  def init_spark_plug
    ap "je suis dans #{__method__}"
  end
end
