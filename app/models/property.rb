class Property < ApplicationRecord
  enum type: [ :house, :department ]

  validates_presence_of :type, :title, :address, :zipcode, :country

  validates_length_of :title, in: 15..45

  validates_length_of :address, in: 30..140

  validates_length_of :zipcode, is: 5
  validates :zipcode, format: { with: /[1-9][0-9][0-9][0-9][0-9]/ }

  validates_length_of :country, is: 2
  validates :country, format: { with: /mx|us|ca/ }

  validates_length_of :notes, maximum: 300
end
