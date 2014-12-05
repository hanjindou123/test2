class SubscribesController < ApplicationController
  before_action :set_subscribe, only: [:show, :edit, :update, :destroy]

  # GET /subscribes
  # GET /subscribes.json
  def index
    @subscribes = Subscribe.all
  end

  # GET /subscribes/1
  # GET /subscribes/1.json
  def show
  end

  # GET /subscribes/new
  def new
    @subscribe = Subscribe.new
  end

  # GET /subscribes/1/edit
  def edit
  end
  
  def subscribe
    if session[:user_name]==nil
      session[:backurl]='/instruments/'+session[:instrument_id].to_s
      redirect_to users_login_path
    else
    @timenow = Time.now
    end 
  end

  # POST /subscribes
  # POST /subscribes.json
  def create
    @subscribe = Subscribe.new(subscribe_params)

    respond_to do |format|
      if @subscribe.save
        format.html { redirect_to @subscribe, notice: 'Subscribe was successfully created.' }
        format.json { render :show, status: :created, location: @subscribe }
      else
        format.html { render :new }
        format.json { render json: @subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribes/1
  # PATCH/PUT /subscribes/1.json
  def update
    respond_to do |format|
      if @subscribe.update(subscribe_params)
        format.html { redirect_to @subscribe, notice: 'Subscribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscribe }
      else
        format.html { render :edit }
        format.json { render json: @subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribes/1
  # DELETE /subscribes/1.json
  def destroy
    @subscribe.destroy
    respond_to do |format|
      format.html { redirect_to subscribes_url, notice: 'Subscribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find 
    @subscribes1 = Subscribe.where("subscribe_user_name=?",params[:search_string])
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscribe
      @subscribe = Subscribe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscribe_params
      params.require(:subscribe).permit(:subscribe_instrument_sn, :subscribe_user_name, :subscribe_submit_datetime, :subscribe_use_slot0, :subscribe_use_slot1, :subscribe_use_slot2, :subscribe_use_slot3, :subscribe_use_slot4, :subscribe_use_slot5, :subscribe_use_slot6, :subscribe_use_slot7, :subscribe_use_slot8, :subscribe_use_slot9, :subscribe_use_slot10, :subscribe_use_slot11, :subscribe_cost, :subscribe_state)
    end
end
