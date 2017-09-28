class CreateTypes < ActiveRecord::Migration
  def change
    create_table :bead_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
