puts "Cargando seed de TEST"

Car.create(model: 7, brand: 'Toyota_seed_test', driver_id: 7, code: 'cod1')
Car.create(model: 7, brand: 'Tesla_seed_test', driver_id: 7, code: 'cod2')
Car.create(model: 7, brand: 'Mazda_seed_test', driver_id: 7, code: 'cod3')

Driver.create(name: 'Luke_seed_test', code:'cod1')
Driver.create(name: 'Carlos_seed_test', code:'cod1')
Driver.create(name: 'Alberto_seed_test', code:'cod1')