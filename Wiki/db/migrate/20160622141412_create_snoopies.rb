class CreateSnoopies < ActiveRecord::Migration[5.0]
  def change
    create_table :snoopies do |t|
      t.string :char_name
      t.string :char_found
      t.string :char_image
      t.string :char_desc
      t.string :char_dyknow

      t.timestamps
    end
  end
end
