class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :clave_obra
      t.string :num_proyecto
      t.integer :monto_solicitado
      t.integer :monto_autorizado
      t.string :of_autorizacion
      t.date :fecha_inicio
      t.date :fecha_fin

      t.timestamps
    end
  end
end
