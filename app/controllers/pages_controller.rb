class PagesController < ApplicationController
  def home
    @client = Client.new(client_params)
  end

  def client_params
    params.permit(:name, :email, :phone_number)
  end
end
