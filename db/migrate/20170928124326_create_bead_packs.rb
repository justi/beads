class CreateBeadPacks < ActiveRecord::Migration
  def change
    create_table :bead_packs do |t|
      t.float :count
      t.belongs_to :type, index: true
      t.belongs_to :size, index: true
      t.string :name
      t.timestamps null: false
    end
  end
end
