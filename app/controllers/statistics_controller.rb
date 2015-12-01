class StatisticsController < ApplicationController

  # TODO
  # find the maximum temperature recorded
  def maximum_temperature
    @temperatures = Temperature.maximum('temperature')
    
  end

    # you should figure a way to display the maximum recorded temperature


  # TODO
  # find the average temperature recorded
  def average_temperature
    @average_temps = Temperature.average('temperature')
  end

  # TODO
  # display a customer's low and high temperature that is available
  def customer_low_high
    @high = Customer.find(params[:id]).temperatures.maximum('temperature')
    @low = Customer.find(params[:id]).temperatures.minimum('temperature')
    @id = Customer.find(params[:id]).name
    
    # temperature from the database
    # display for each customer in a table like the customer phonebook
  end

end
