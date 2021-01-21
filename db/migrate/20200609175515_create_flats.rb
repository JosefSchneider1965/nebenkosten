class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :Adresse
      t.text :Beschreibung
      t.decimal :Wasser , precision: 8, scale: 2
      t.decimal :Abwasser , precision: 8, scale: 2
      t.decimal :Kaminkehrer , precision: 8, scale: 2
      t.decimal :Abfallbeseitigung , precision: 8, scale: 2
      t.decimal :Grundsteuer , precision: 8, scale: 2
      t.decimal :Heizungswartung , precision: 8, scale: 2
      t.decimal :Versicherung , precision: 8, scale: 2
      t.decimal :Vorauszahlung , precision: 8, scale: 2
      t.decimal :Restzahlung , precision: 8, scale: 2

      t.timestamps
    end
  end
end
