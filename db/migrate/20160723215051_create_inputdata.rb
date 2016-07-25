class CreateInputdata < ActiveRecord::Migration[5.0]
  def change
    create_table :inputdata do |t|
      t.string :datafile

      t.timestamps
    end
  end
end
