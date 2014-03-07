class Participant < ActiveRecord::Base
  has_and_belongs_to_many :events

  validates :email,
    uniqueness: {message: "Email já foi cadastrado."},
    presence: {message: "Email inválido."},
    format: {with: /@.*\./, message: "Email inválido."}
end
