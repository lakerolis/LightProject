class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text :name
      t.text :description
      t.text :defaultSettings
      t.text :settings

      t.timestamps null: false
    end
  end
end
