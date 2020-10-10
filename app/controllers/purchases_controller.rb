class PurchasesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.save!
    redirect_to purchase_path(@purchase)
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])
    @purchase.update(purchase_params)
    redirect_to purchase_path(@purchase)
  end

  def destroy
   @purchase = Purchase.find(params[:id])
   @purchase.destroy
   redirect_to purchases_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:material,:provaider,:quantity, :price, :date)
  end

end
