class AddCodeToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :code, :string
  end
end
