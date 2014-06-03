class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre_completo

      t.timestamps
    end
  end
end
