class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    @instruments = Instrument.all
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
   session[:instrument_id] = @instrument.id
  end

  # GET /instruments/new
  def new
    if session[:user_name]==nil
      session[:backurl]='/instruments/new'
      redirect_to users_login_path
    else
      @instrument = Instrument.new
    end	
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to @instrument, notice: 'Instrument was successfully created.' }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to @instrument, notice: 'Instrument was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url, notice: 'Instrument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def find 
    @instruments1 = Instrument.where("instrument_name=?",params[:search_string])
    @instruments2 = Instrument.where("instrument_class=?",params[:search_string])
    @instruments3 = Instrument.where("instrument_address=?",params[:search_string])
  end
   
  def history
    @instrument = Instrument.find(params[:id])
    @availables = Available.where(" instrument_id = ?", params[:id]).order("available_datetime")
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_params
      params.require(:instrument).permit(:instrument_sn, :instrument_name, :instrument_class, :instrument_address, :instrument_brief, :instrument_detail, :instrument_state, :instrument_cost_per_hour, :instrument_assistant, :instrument_assessor, :instrument_administrator, :avatar)
    end
end
