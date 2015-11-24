class StatisticsController < ApplicationController

  # TODO
  # find the maximum temperature recorded
  def maximum_temperature
    @temperatures = Temperatures.maximum('temps')
  end

    # you should figure a way to display the maximum recorded temperature
  end

  # TODO
  # find the average temperature recorded
  def average_temperature
    @average_temp = Temperatures.average('temps')
  end

  # TODO
  # display a customer's low and high temperature that is available
  def customer_low_high
    @high = Temperatures.minimum('temps')
    @low = Temperatures.minimum('temps')
    # temperature from the database
    # display for each customer in a table like the customer phonebook
  end

end
