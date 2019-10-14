class ChargesController < ApplicationController
  def new
    @membership = Membership.find(params[:id])
  end

  def create
    binding.pry
    membership = Membership.find(params[:membership_id]) 
  end
end
