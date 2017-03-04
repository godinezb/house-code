class Property < ApplicationRecord
  # NOTE: Decided to remove the column for STI,
  # so that type is not a restricted word
  self.inheritance_column = nil

  enum type: [ :house, :department ]

  validates_presence_of :type, message: "Type no debe ser vacío."
  validates_presence_of :title, message: "Title no debe ser vacío."
  validates_presence_of :address, message: "Address no debe ser vacío."
  validates_presence_of :zipcode, message: "Zipcode no debe ser vacío."
  validates_presence_of :country, message: "Country no debe ser vacío."

  validates_length_of :title, in: 15..45,
    message: "Title debe contener entre 15 y 45 caracteres."

  validates_length_of :address, in: 30..140,
    message: "Address debe contener entre 30 y 140 caracteres."

  validates_length_of :zipcode, is: 5,
    message: "Zipcode debe contener exactamente 5 caracteres."
  validates :zipcode, format: { with: /[1-9][0-9][0-9][0-9][0-9]/,
    message: "Zipcode formato invalido." }

  validates_length_of :country, is: 2,
  message: "Country debe contener exactamente 2 caracteres."
  validates :country, format: { with: /mx|us|ca/,
    message: "Country solo acepta los valores: mx, us y ca." }

  validates_length_of :notes, maximum: 300,
    message: "Notes debe contener máximo de 300 caracteres."
end
