class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.text :operator
      t.text :operator_value
      t.text :sensor_value

      t.timestamps null: false
    end
  end
end
