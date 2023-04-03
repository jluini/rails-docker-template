class CreateCosos < ActiveRecord::Migration[5.2]
  def change
    create_table :cosos do |t|
      t.string :name
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end
