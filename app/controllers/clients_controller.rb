class ClientsController < ApplicationController
  def create
    @client = Client.new(client_params)
    @client.save

    redirect_to root_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone_number)
  end
end
