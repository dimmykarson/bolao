class CreateApostadores < ActiveRecord::Migration[5.1]
  def change
    create_table :apostadores do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
