class User < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :notes
      t.datetime :doj
      t.integer :role_id
      t.boolean :active
      t.timestamps
    end
  end
end
