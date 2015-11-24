class CustomerController < ApplicationController

  def index
    
  end

  #TODO
  # display the number of log readings a customer has associated
  def number_of_readings
    
    @num_readings = Customer.find(params[:id]).temperatures.count()
    
    render :html => @num_readings.to_s
  end

end
