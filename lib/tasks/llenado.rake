namespace :llenado do
    desc "Corriendo el rake de LLENADO"
    task t_hola: :environment do
        puts "Hola mundo!!! Es mi primer rake"
    end

    task drivers_code: :environment do
        Driver.all.each do |driver|
            driver.code ="1-C"
            driver.save

            puts driver.name, driver.code
        end
    end

end
