# frozen_string_literal: true

class CreateWineries < ActiveRecord::Migration[7.0]
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
