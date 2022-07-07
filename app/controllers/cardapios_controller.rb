class CardapiosController < ApplicationController
  def index
    @cardapios = Cardapio.all
  end
end
