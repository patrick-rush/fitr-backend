class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :uname
      t.string :category
      t.text :description
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
