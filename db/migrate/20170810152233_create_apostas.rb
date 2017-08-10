class CreateApostas < ActiveRecord::Migration[5.1]
  def change
    create_table :apostas do |t|
      t.references :apostador, foreign_key: true
      t.boolean :pago

      t.timestamps
    end
  end
end
