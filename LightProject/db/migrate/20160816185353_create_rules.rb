class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.text :name
      t.text :description
      t.text :state
      t.text :conditionType
      t.references :sensor, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true
      t.references :action, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
