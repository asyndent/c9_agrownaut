class CustomerController < ApplicationController

  def index
    
  end

  #TODO
  # display the number of log readings a customer has associated
  def number_of_readings
    @id = Customer.find(params[:id]).name
    @num_readings = Customer.find(params[:id]).temperatures.count()
    
  end

  def create_customer
    if request.post?
      c = Customer.new()
      c.name = params[:customer]
      c.save
    end
  end
  
  def list_customer
    @list_customer = Customer.all()
  end

  def customer_data
    @customer = Customer.find(params[:id])
  end

  def add_temperature
    if request.post?  
      t = Temperature.new()
      t.temperature = params[:temperature]
      t.customer_id = params[:id]
      t.save
      
      redirect_to :action => "customer_data", :id => params[:id]
    end
  end

  def delete_customer
      @delete_customer = Customer.destroy()
  end

  # TODO we want to be able to delete a customer
  
  # TODO we want to change a customer's name
  
  # TODO we want to be able to delete 
  # individual temperature readings
  


end
