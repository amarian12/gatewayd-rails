class RippleTransactionsController < ApplicationController
  before_action :set_ripple_transaction, only: [:show, :edit, :update, :destroy]

  # GET /ripple_transactions
  # GET /ripple_transactions.json
  def index
    @ripple_transactions = RippleTransaction.all
  end

  # GET /ripple_transactions/1
  # GET /ripple_transactions/1.json
  def show
  end

  # GET /ripple_transactions/new
  def new
    @ripple_transaction = RippleTransaction.new
  end

  # GET /ripple_transactions/1/edit
  def edit
  end

  # POST /ripple_transactions
  # POST /ripple_transactions.json
  def create
    @ripple_transaction = RippleTransaction.new(ripple_transaction_params)

    respond_to do |format|
      if @ripple_transaction.save
        format.html { redirect_to @ripple_transaction, notice: 'Ripple transaction was successfully created.' }
        format.json { render :show, status: :created, location: @ripple_transaction }
      else
        format.html { render :new }
        format.json { render json: @ripple_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ripple_transactions/1
  # PATCH/PUT /ripple_transactions/1.json
  def update
    respond_to do |format|
      if @ripple_transaction.update(ripple_transaction_params)
        format.html { redirect_to @ripple_transaction, notice: 'Ripple transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @ripple_transaction }
      else
        format.html { render :edit }
        format.json { render json: @ripple_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ripple_transactions/1
  # DELETE /ripple_transactions/1.json
  def destroy
    @ripple_transaction.destroy
    respond_to do |format|
      format.html { redirect_to ripple_transactions_url, notice: 'Ripple transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ripple_transaction
      @ripple_transaction = RippleTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ripple_transaction_params
      params.require(:ripple_transaction).permit(:to_address, :from_address, :to_amount, :from_amount, :to_currency, :from_currency, :to_issuer, :from_issuer, :transaction_state, :transaction_hash, :state, :uid, :data)
    end
end
