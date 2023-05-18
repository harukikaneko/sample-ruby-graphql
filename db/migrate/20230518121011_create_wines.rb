class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vitage
      t.string :wine_type
      t.string :grape
      t.string :country
      t.string :region

      t.references :winery, index: true, foreign_key: true
      t.index [:winery_id, :vintage, :name], unique: true, name: 'index_wines_on_winery_id_and_vintage_and_name'

      t.timestamps
    end
  end
end
