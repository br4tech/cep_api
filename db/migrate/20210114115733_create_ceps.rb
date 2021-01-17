class CreateCeps < ActiveRecord::Migration[6.0]
  def change
    create_table :ceps do |t|
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :uf
      t.string :complement
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
