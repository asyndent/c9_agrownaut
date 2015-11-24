class WelcomeController < ApplicationController
 def index
    @temperature = 85
    @add = "james"
  end

  def current_temperature
    @logs = Log.all()
  end

  def customer_phonebook
    @customers = Customer.all().order('name')
  end

end
