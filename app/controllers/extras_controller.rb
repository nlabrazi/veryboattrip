class ExtrasController < ApplicationController
  before_action :set_extra

  def index
    @extras = Extra.all
  end

  def show
  end

  def new
    @extra = Extra.new
  end

  def create
    @extra = Extra.new(extra_params)
    if @extra.save
      redirect_to extra_path(@extra)
    else
      render :new
    end
  end

  private

  def set_extra
    @extra = Extra.find(params[:id])
  end

  # def extra_params
  #   params.require(:extra).permit(, :photo)
  # end
end
