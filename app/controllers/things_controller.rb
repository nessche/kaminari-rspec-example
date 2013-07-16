class ThingsController < ApplicationController


  def index

    @things =  Thing.order(:name).page(params[:page]).per(2)

  end

end
