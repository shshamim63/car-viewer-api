class CarSerializer < ActiveModel::Serializer
  attributes :id, :modelname, :fee, :payable, :duration, :representative, :description
end
