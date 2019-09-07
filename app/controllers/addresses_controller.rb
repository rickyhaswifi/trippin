class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = Address.all
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
    if @address.save
      redirect_to @address
    else
      render :new
    end
  end

  def edit
    render :new
  end

  def update
    if @address.update(address_params)
      redirect_to @address
    else
      render :new
    end
  end

  def destroy
    @address.destroy
    redirect_to addresses_path
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:street, :city, :state, :zip)
    end
end
