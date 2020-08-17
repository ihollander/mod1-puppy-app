class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :puppy_id
      t.integer :plant_id
      t.string :scent_notes

      t.timestamps
    end
  end
end


# visits
# - puppy_id
# - plant_id
# - time
# - scent_notes