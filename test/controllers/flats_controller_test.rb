require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flat = flats(:one)
  end

  test "should get index" do
    get flats_url
    assert_response :success
  end

  test "should get new" do
    get new_flat_url
    assert_response :success
  end

  test "should create flat" do
    assert_difference('Flat.count') do
      post flats_url, params: { flat: { Abfallbeseitigung: @flat.Abfallbeseitigung, Abwasser: @flat.Abwasser, Adresse: @flat.Adresse, Beschreibung: @flat.Beschreibung, Grundsteuer: @flat.Grundsteuer, Heizungswartung: @flat.Heizungswartung, Kaminkehrer: @flat.Kaminkehrer, Restzahlung: @flat.Restzahlung, Versicherung: @flat.Versicherung, Vorauszahlung: @flat.Vorauszahlung, Wasser: @flat.Wasser } }
    end

    assert_redirected_to flat_url(Flat.last)
  end

  test "should show flat" do
    get flat_url(@flat)
    assert_response :success
  end

  test "should get edit" do
    get edit_flat_url(@flat)
    assert_response :success
  end

  test "should update flat" do
    patch flat_url(@flat), params: { flat: { Abfallbeseitigung: @flat.Abfallbeseitigung, Abwasser: @flat.Abwasser, Adresse: @flat.Adresse, Beschreibung: @flat.Beschreibung, Grundsteuer: @flat.Grundsteuer, Heizungswartung: @flat.Heizungswartung, Kaminkehrer: @flat.Kaminkehrer, Restzahlung: @flat.Restzahlung, Versicherung: @flat.Versicherung, Vorauszahlung: @flat.Vorauszahlung, Wasser: @flat.Wasser } }
    assert_redirected_to flat_url(@flat)
  end

  test "should destroy flat" do
    assert_difference('Flat.count', -1) do
      delete flat_url(@flat)
    end

    assert_redirected_to flats_url
  end
end
