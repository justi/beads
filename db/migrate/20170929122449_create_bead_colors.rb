class CreateBeadColors < ActiveRecord::Migration
  def change
    create_table :bead_colors do |t|
      t.integer :r
      t.integer :g
      t.integer :b
      t.float :h
      t.float :s
      t.float :l

      t.timestamps null: false
    end
  end
end
