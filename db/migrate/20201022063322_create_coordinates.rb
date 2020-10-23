class CreateCoordinates < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinates do |t|
      t.text :coordinate_info
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
