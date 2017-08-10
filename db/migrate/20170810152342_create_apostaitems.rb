class CreateApostaitems < ActiveRecord::Migration[5.1]
  def change
    create_table :apostaitems do |t|
      t.references :aposta, foreign_key: true
      t.integer :colocacao
      t.references :clube, foreign_key: true

      t.timestamps
    end
  end
end
