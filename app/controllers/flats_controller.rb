class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  # GET /flats/1.json
  def show
  end

  # GET /flats/new
  def new
    @flat = Flat.new
  end

  # GET /flats/1/edit
  def edit
  end

  # POST /flats
  # POST /flats.json
  def create
    @flat = Flat.new(flat_params)
    @flat.Restzahlung = @flat.Wasser + @flat.Abwasser + @flat.Kaminkehrer + @flat.Abfallbeseitigung + @flat.Grundsteuer - (12 * @flat.Vorauszahlung)

    respond_to do |format|
      if @flat.save
        format.html { redirect_to @flat, notice: 'Flat was successfully created.' }
        format.json { render :show, status: :created, location: @flat }
      else
        format.html { render :new }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flats/1
  # PATCH/PUT /flats/1.json
  def update
    respond_to do |format|
      if @flat.update(flat_params)
        format.html { redirect_to @flat, notice: 'Flat was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat }
      else
        format.html { render :edit }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats/1
  # DELETE /flats/1.json
  def destroy
    @flat.destroy
    respond_to do |format|
      format.html { redirect_to flats_url, notice: 'Flat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
      @flat.Restzahlung = @flat.Wasser + @flat.Abwasser + @flat.Kaminkehrer + @flat.Abfallbeseitigung + @flat.Grundsteuer - (12 * @flat.Vorauszahlung)
    end

    # Only allow a list of trusted parameters through.
    def flat_params
      params.require(:flat).permit(:Adresse, :Beschreibung, :Wasser, :Abwasser, :Kaminkehrer, :Abfallbeseitigung, :Grundsteuer, :Heizungswartung, :Versicherung, :Vorauszahlung, :Restzahlung, :Jahr, :user_id)
    end
end
