class RippleAddressesController < ApplicationController
  before_action :set_ripple_address, only: [:show, :edit, :update, :destroy]

  # GET /ripple_addresses
  # GET /ripple_addresses.json
  def index
    @ripple_addresses = RippleAddress.all
  end

  # GET /ripple_addresses/1
  # GET /ripple_addresses/1.json
  def show
  end

  # GET /ripple_addresses/new
  def new
    @ripple_address = RippleAddress.new
  end

  # GET /ripple_addresses/1/edit
  def edit
  end

  # POST /ripple_addresses
  # POST /ripple_addresses.json
  def create
    @ripple_address = RippleAddress.new(ripple_address_params)

    respond_to do |format|
      if @ripple_address.save
        format.html { redirect_to @ripple_address, notice: 'Ripple address was successfully created.' }
        format.json { render :show, status: :created, location: @ripple_address }
      else
        format.html { render :new }
        format.json { render json: @ripple_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ripple_addresses/1
  # PATCH/PUT /ripple_addresses/1.json
  def update
    respond_to do |format|
      if @ripple_address.update(ripple_address_params)
        format.html { redirect_to @ripple_address, notice: 'Ripple address was successfully updated.' }
        format.json { render :show, status: :ok, location: @ripple_address }
      else
        format.html { render :edit }
        format.json { render json: @ripple_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ripple_addresses/1
  # DELETE /ripple_addresses/1.json
  def destroy
    @ripple_address.destroy
    respond_to do |format|
      format.html { redirect_to ripple_addresses_url, notice: 'Ripple address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ripple_address
      @ripple_address = RippleAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ripple_address_params
      params.require(:ripple_address).permit(:managed, :address, :type, :tag, :uid, :data)
    end
end
