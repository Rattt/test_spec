class ForsedsController < ApplicationController
  def index
    @forseds = Forsed.all.reverse
  end

  def new
    @forsed = Forsed.new
  end

  def create
    @forsed = Forsed.new(forsed_params)

    respond_to do |format|
      if @forsed.save
        format.html { redirect_to forseds_url, notice: 'Добавлено' }
      else
        format.html { render 'new' }
      end
    end

  end

  private
    def forsed_params
      params.require(:forsed).permit(:name, :price, :endtime)
    end
end
