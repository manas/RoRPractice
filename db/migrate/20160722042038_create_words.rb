class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word
      t.boolean :is_compound
      t.text :details

      t.timestamps
    end
  end
end
