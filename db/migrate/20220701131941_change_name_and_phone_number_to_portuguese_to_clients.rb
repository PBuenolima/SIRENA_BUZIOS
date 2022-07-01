class ChangeNameAndPhoneNumberToPortugueseToClients < ActiveRecord::Migration[6.1]
  def change
    rename_column :clients, :name, :nome
    rename_column :clients, :phone_number, :telefone
  end
end
