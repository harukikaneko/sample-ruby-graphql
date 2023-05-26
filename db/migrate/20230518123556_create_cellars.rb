# frozen_string_literal: true

class CreateCellars < ActiveRecord::Migration[7.0]
  def change
    create_table :cellars do |t|
      t.integer :bottle_count, default: 0
      t.references :wine, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.index %i[wine_id user_id], unique: true, name: 'index_cellars_on_wine_id_and_user_id'

      t.timestamps
    end
  end
end
