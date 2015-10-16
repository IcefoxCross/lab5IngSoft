class CreateVictimas < ActiveRecord::Migration
  def change
    create_table :victimas do |t|
      t.string :nombre
      t.integer :edad
      t.integer :monstruo_id

      t.timestamps null: false
    end
  end
end
