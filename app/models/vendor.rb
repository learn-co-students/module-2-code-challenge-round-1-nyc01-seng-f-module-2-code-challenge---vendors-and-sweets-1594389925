class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets


    def average
        @vendor = Vendor.find(params[:id])
        @vendor.sweets
    end
end
