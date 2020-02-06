class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :user, :car
end
