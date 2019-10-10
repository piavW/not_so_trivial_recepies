class ChargesController < ApplicationController
  def new
    @membership = Membership.find(params:[id])
  end

  def create
  end
end
