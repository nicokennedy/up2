class PurchasesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
