class CreateMedals < ActiveRecord::Migration[6.0]
  def change
    create_table :medals do |t|
      t.integer :rank
      t.string :nation
      t.integer :gold
      t.integer :silver
      t.integer :bronze
      t.integer :total

      t.timestamps
    end
  end
end
