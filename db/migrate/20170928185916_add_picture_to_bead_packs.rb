class AddPictureToBeadPacks < ActiveRecord::Migration
  def change
    add_column :bead_packs, :picture, :string
  end
end
