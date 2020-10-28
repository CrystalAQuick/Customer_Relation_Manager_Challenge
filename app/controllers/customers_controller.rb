class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alpha
    @customers = Customer.order("name ASC")
  end

  def missing
    @customers = Customer.where(email: "")

  end
end
