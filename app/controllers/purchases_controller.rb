class PurchasesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @purchases = Purchase.all
  end
end
