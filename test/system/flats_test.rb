require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  setup do
    @flat = flats(:one)
  end

  test "visiting the index" do
    visit flats_url
    assert_selector "h1", text: "Flats"
  end

  test "creating a Flat" do
    visit flats_url
    click_on "New Flat"

    fill_in "Abfallbeseitigung", with: @flat.Abfallbeseitigung
    fill_in "Abwasser", with: @flat.Abwasser
    fill_in "Adresse", with: @flat.Adresse
    fill_in "Beschreibung", with: @flat.Beschreibung
    fill_in "Grundsteuer", with: @flat.Grundsteuer
    fill_in "Heizungswartung", with: @flat.Heizungswartung
    fill_in "Kaminkehrer", with: @flat.Kaminkehrer
    fill_in "Restzahlung", with: @flat.Restzahlung
    fill_in "Versicherung", with: @flat.Versicherung
    fill_in "Vorauszahlung", with: @flat.Vorauszahlung
    fill_in "Wasser", with: @flat.Wasser
    click_on "Create Flat"

    assert_text "Flat was successfully created"
    click_on "Back"
  end

  test "updating a Flat" do
    visit flats_url
    click_on "Edit", match: :first

    fill_in "Abfallbeseitigung", with: @flat.Abfallbeseitigung
    fill_in "Abwasser", with: @flat.Abwasser
    fill_in "Adresse", with: @flat.Adresse
    fill_in "Beschreibung", with: @flat.Beschreibung
    fill_in "Grundsteuer", with: @flat.Grundsteuer
    fill_in "Heizungswartung", with: @flat.Heizungswartung
    fill_in "Kaminkehrer", with: @flat.Kaminkehrer
    fill_in "Restzahlung", with: @flat.Restzahlung
    fill_in "Versicherung", with: @flat.Versicherung
    fill_in "Vorauszahlung", with: @flat.Vorauszahlung
    fill_in "Wasser", with: @flat.Wasser
    click_on "Update Flat"

    assert_text "Flat was successfully updated"
    click_on "Back"
  end

  test "destroying a Flat" do
    visit flats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flat was successfully destroyed"
  end
end
