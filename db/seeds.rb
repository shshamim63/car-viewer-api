require 'faker'

models = [
  'M240i Coupe',
  'M240i Convertible',
  'M235i xDrive',
  'M340i Sedan',
  'M550i xDrive',
  'M760i xDrive',
  'M850i xDrive',
]

payables = [1500, 2000, 3000, 4500, 8500, 15600]
fees = [15, 28, 35, 11, 19, 22]
durations = [2, 5, 6 ,7 ,9, 8]

10.times do
  modelname = models.sample
  Car.create!({
    modelname: modelname,
    fee: fees.sample,
    payable: payables.sample,
    duration: durations.sample,
    representative: Faker::Name.name, 
    description: "#{modelname} - #{Faker::Company.bs}",
  })
end 