json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :nombre, :clave_obra, :num_proyecto, :monto_solicitado, :monto_autorizado, :of_autorizacion, :fecha_inicio, :fecha_fin
  json.url proyecto_url(proyecto, format: :json)
end
