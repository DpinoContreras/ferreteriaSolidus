json.extract! cliente, :id, :nombreCliente, :fonoCliente, :Ubicacion_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)