class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombreCliente
      t.integer :fonoCliente
      t.references :ubicacion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
