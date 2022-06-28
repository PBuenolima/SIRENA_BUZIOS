class ClientsController < ApplicationController
  def create
    @client = Client.new(client_params)
    redirect_to root_path if @client.save
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone_number)
  end
end
