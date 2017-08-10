class CreateApostadors < ActiveRecord::Migration[5.1]
  def change
    create_table :apostadors do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
