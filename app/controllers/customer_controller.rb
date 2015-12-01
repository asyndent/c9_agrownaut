class CustomerController < ApplicationController

  def index
    
  end

  #TODO
  # display the number of log readings a customer has associated
  def number_of_readings
    @id = Customer.find(params[:id]).name
    @num_readings = Customer.find(params[:id]).temperatures.count()
    
  end

end
