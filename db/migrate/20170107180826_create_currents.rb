class CreateCurrents < ActiveRecord::Migration[5.0]
  def change
    create_table :currents do |t|
      t.string :name, default: 'USD'
      t.float :price
      t.timestamps
    end
  end
end
