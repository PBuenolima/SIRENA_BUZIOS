class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ URI::MailTo::EMAIL_REGEXP
      record.errors.add attribute, (options[:message] || "is not an email")
    end
  end
end

class Client < ApplicationRecord
  validates :nome, :email, :telefone, :mensagem, presence: true
  validates :email, :telefone, uniqueness: true
  validates :email, email: true
end
