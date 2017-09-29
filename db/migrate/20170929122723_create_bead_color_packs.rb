class CreateBeadColorPacks < ActiveRecord::Migration
  def change
    create_table :bead_color_packs do |t|
      t.belongs_to :bead_color, index: true
      t.belongs_to :bead_pack, index: true
      t.float :color_percentage

      t.timestamps null: false
    end
  end
end
