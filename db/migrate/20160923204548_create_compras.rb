class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :cliente_id
#      t.references :Cliente, index: true, foreign_key: true
      t.integer :precioTotal
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
