class AvailablesController < ApplicationController
  before_action :set_available, only: [:show, :edit, :update, :destroy]

  # GET /availables
  # GET /availables.json
  def index
    @availables = Available.all
  end

  # GET /availables/1
  # GET /availables/1.json
  def show
  end

  # GET /availables/new
  def new
    @available = Available.new
  end

  # GET /availables/1/edit
  def edit
  end

  def timeslot
    @available = Available.find_by available_datetime: params[:time],instrument_id: params[:id]

    if @available == nil
       @available = Available.new(:instrument_id=>params[:id],
                                  :available_datetime=>params[:time],
                                  :available_slot0=>false,
                                  :available_slot1=>false,
                                  :available_slot2=>false,
                                  :available_slot3=>false,
                                  :available_slot4=>false,
                                  :available_slot5=>false,
                                  :available_slot6=>false,
                                  :available_slot7=>false,
                                  :available_slot8=>false,
                                  :available_slot9=>false,
                                  :available_slot10=>false,
                                  :available_slot11=>false)
       @available.save
       @f = 'create success'
    elsif @f = 'already created'
    end
      session[:s0] = @available[:available_slot0]
      session[:s1] = @available[:available_slot1]
      session[:s2] = @available[:available_slot2]
      session[:s3] = @available[:available_slot3]
      session[:s4] = @available[:available_slot4]
      session[:s5] = @available[:available_slot5]
      session[:s6] = @available[:available_slot6]
      session[:s7] = @available[:available_slot7]
      session[:s8] = @available[:available_slot8]
      session[:s9] = @available[:available_slot9]
      session[:s10] = @available[:available_slot10]
      session[:s11] = @available[:available_slot11]
    #@temp = Marshal.load(Marshal.dump(@available))
    @instrument = Instrument.find(params[:id])
    @timechoose = params[:time]

  end

  # POST /availables
  # POST /availables.json
  def create
    @available = Available.new(available_params)
    respond_to do |format|
      if @available.save
        format.html { redirect_to @available, notice: 'Available was successfully created.' }
        format.json { render :show, status: :created, location: @available }
      else
        format.html { render :new }
        format.json { render json: @available.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /availables/1
  # PATCH/PUT /availables/1.json
  def update
    @subscribe = Subscribe.new(subscribe_params)
    @subscribe.save
    respond_to do |format|
      if @available.update(available_params)
        format.html { redirect_to instrument_path(@available.instrument_id), notice: 'Available was successfully updated.' }
      else
        format.html { render :edit }
      end
    end  
  end
  

  # DELETE /availables/1
  # DELETE /availables/1.json
  def destroy
    @available.destroy
    respond_to do |format|
      format.html { redirect_to availables_url, notice: 'Available was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def copy
      
    end 
    def subscribe_params
      @instrument = Instrument.find(session[:instrument_id])

      {:subscribe_instrument_sn=>@instrument.instrument_sn,
       :subscribe_user_name=>session[:user_name],
       :subscribe_submit_datetime=>Time.now.to_s(:db),
       :subscribe_use_slot0=>session[:s0]==params[:available][:available_slot0].to_i.zero?,
       :subscribe_use_slot1=>session[:s1]==params[:available][:available_slot1].to_i.zero?,
       :subscribe_use_slot2=>session[:s2]==params[:available][:available_slot2].to_i.zero?,
       :subscribe_use_slot3=>session[:s3]==params[:available][:available_slot3].to_i.zero?,
       :subscribe_use_slot4=>session[:s4]==params[:available][:available_slot4].to_i.zero?,
       :subscribe_use_slot5=>session[:s5]==params[:available][:available_slot5].to_i.zero?,
       :subscribe_use_slot6=>session[:s6]==params[:available][:available_slot6].to_i.zero?,
       :subscribe_use_slot7=>session[:s7]==params[:available][:available_slot7].to_i.zero?,
       :subscribe_use_slot8=>session[:s8]==params[:available][:available_slot8].to_i.zero?,
       :subscribe_use_slot9=>session[:s9]==params[:available][:available_slot9].to_i.zero?,
       :subscribe_use_slot10=>session[:s10]==params[:available][:available_slot10].to_i.zero?,
       :subscribe_use_slot11=>session[:s11]==params[:available][:available_slot11].to_i.zero?,
       :subscribe_cost=>0,
       :subscribe_state=>"快来掏钱!"
      }
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_available
      @available = Available.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_params
      params.require(:available).permit(:available_slot0,:available_slot1,:available_slot2,:available_slot3,:available_slot4,:available_slot5,:available_slot6,:available_slot7,:available_slot8,:available_slot9,:available_slot10,:available_slot11)
    end
end
