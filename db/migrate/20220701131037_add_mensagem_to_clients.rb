class AddMensagemToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :mensagem, :text
  end
end
