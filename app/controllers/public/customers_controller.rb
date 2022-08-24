class Public::CustomersController < ApplicationController
  before_action :set_public_customer, only: %i[ show edit update destroy ]

  # GET /public/customers or /public/customers.json
  def index
    @public_customers = Public::Customer.all
  end

  # GET /public/customers/1 or /public/customers/1.json
  def show
  end

  # GET /public/customers/new
  def new
    @public_customer = Public::Customer.new
  end

  # GET /public/customers/1/edit
  def edit
  end

  # POST /public/customers or /public/customers.json
  def create
    @public_customer = Public::Customer.new(public_customer_params)

    respond_to do |format|
      if @public_customer.save
        format.html { redirect_to public_customer_url(@public_customer), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @public_customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @public_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public/customers/1 or /public/customers/1.json
  def update
    respond_to do |format|
      if @public_customer.update(public_customer_params)
        format.html { redirect_to public_customer_url(@public_customer), notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @public_customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @public_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public/customers/1 or /public/customers/1.json
  def destroy
    @public_customer.destroy

    respond_to do |format|
      format.html { redirect_to public_customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_customer
      @public_customer = Public::Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def public_customer_params
      params.fetch(:public_customer, {})
    end
end
