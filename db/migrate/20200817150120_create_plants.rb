class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :size
      t.string :genus
      t.string :common_name

      t.timestamps
    end
  end
end

# plants
# - size
# - genus
# - common_name