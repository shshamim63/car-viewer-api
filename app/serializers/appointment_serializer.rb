class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :city, :user, :car
end
