class PagesController < ApplicationController
  def home
    @client = Client.new(client_params)
  end

  def client_params
    params.permit(:nome, :email, :telefone, :mensagem)
  end
end
