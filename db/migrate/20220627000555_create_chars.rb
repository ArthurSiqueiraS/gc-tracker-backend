class CreateChars < ActiveRecord::Migration[7.0]
  def change
    create_table :chars do |t|
      t.string :name
      t.string :splash
      t.string :color1
      t.string :color2
      t.string :color3

      t.timestamps
    end
  end
end
