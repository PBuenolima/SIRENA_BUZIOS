class Client < ApplicationRecord
  validates :nome, :email, :telefone, :mensagem, presence: true
  validates :email, :telefone, uniqueness: true
end
