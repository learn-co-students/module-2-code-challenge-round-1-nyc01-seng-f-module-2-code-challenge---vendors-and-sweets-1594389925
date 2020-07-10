class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def new 
    @vendor = Vendor.new 
  end 

  def create 
    @vendor = Vendor.create(vendor_params)
  end 

  def show 
    @vendor = Vendor.find(params[:id])

  
  end 

  private 

  def vendor_params 
    params.require(:vendor).permit(:name)
  end 

end
