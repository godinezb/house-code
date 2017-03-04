class PropertySerializer < ActiveModel::Serializer
  attributes :id, :type, :title, :address, :zipcode, :country, :notes
end
