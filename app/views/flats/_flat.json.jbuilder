json.extract! flat, :id, :Adresse, :Beschreibung, :Wasser, :Abwasser, :Kaminkehrer, :Abfallbeseitigung, :Grundsteuer, :Heizungswartung, :Versicherung, :Vorauszahlung, :Restzahlung, :created_at, :updated_at
json.url flat_url(flat, format: :json)
