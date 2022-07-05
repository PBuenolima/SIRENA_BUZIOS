class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    redirect_to root_path if @client.save
  end

  private

  def client_params
    params.require(:client).permit(:nome, :email, :telefone, :mensagem)
  end
end
