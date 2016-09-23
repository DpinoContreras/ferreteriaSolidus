json.extract! compra, :id, :Cliente_id, :precioTotal, :fecha, :created_at, :updated_at
json.url compra_url(compra, format: :json)