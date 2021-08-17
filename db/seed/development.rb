puts "Cargando el seed de Development"

Car.create(model: Faker::Number.within(range: 1980..2022), brand: Faker::Vehicle.manufacture, driver_id: Faker::IDNumber.valid, code: Faker::Code.asin)
#Car.create(model: 7, brand: 'TeslaSeed', driver_id: 7, code: 'cod2')
#Car.create(model: 7, brand: 'MazdaSeed', driver_id: 7, code: 'cod3')

#Driver.create(name: 'Luke_seed_dev', code:'cod1')
#Driver.create(name: 'Carlos_seed_dev', code:'cod1')
#Driver.create(name: 'Alberto_seed_dev', code:'cod1')