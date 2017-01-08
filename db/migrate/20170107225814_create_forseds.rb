class CreateForseds < ActiveRecord::Migration[5.0]
  def change
    create_table :forseds do |t|
      t.string :name, default: 'USD'
      t.float :price
      t.datetime :endtime
      t.timestamps
    end
  end
end
