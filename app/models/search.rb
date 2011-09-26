class Search < ActiveRecord::Base
  attr_writer :current_step

#  validates_presence_of :price, :if => lambda { |o| o.current_step == "price" }
#  validates_presence_of :air_conditioner, :if => lambda { |o| o.current_step == "air_conditioner" }
#  validates_presence_of :fireplace, :if => lambda { |o| o.current_step == "fireplace" }
#  validates_presence_of :number_of_rooms, :if => lambda { |o| o.current_step == "number_of_rooms" }
#  validates_presence_of :balcony, :if => lambda { |o| o.current_step == "balcony" }

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[price air_conditioner fireplace number_of_rooms balcony]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

end

