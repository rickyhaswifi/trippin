class AddressesController < ApplicationController
before_action :set_location
before_action :set_address, only: [:show, :edit, :update, :destroy]

def index
  @addresses = @location.address
end	 

def show	 
end	

def new	 
      # binding.pry
  @address = @location.addresses.new
end

def create
  @address = @location.addresses.new(address_params)
  if @address.save
    redirect_to location_address_path(@location, @address)
  else
    render :new
  end
end

def edit
  render :new
end

def update
  if @address.update(address_params)
    redirect_to location_address_path(@location, @address)
  else
    render :new
  end
end

def destroy
  @address.destroy
  redirect_to root_path
end

private
def address_params
  params.require(:address).permit(:street, :city, :state, :zip)
end

def set_address
@address = Address.find(params[:id])
end

def set_location
@location = Location.find(params[:location_id])
end
end