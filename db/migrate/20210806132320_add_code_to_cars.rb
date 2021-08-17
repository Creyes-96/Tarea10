class AddCodeToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :code, :string
  end
end
