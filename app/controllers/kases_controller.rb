class KasesController < ApplicationController
  before_action :set_kase, only: [:show, :update, :destroy]

  def index
    @kases = Kase.all

    render json: @kases
  end

  def show
    render json: @kase
  end

  def create
    @kase = Kase.new(kase_params)

    if @kase.save
      render json: @kase, status: :created, location: @kase
    else
      render json: @kase.errors, status: :unprocessable_entity
    end
  end

  def update
    if @kase.update(kase_params)
      render json: @kase
    else
      render json: @kase.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @kase.destroy
  end

  private
    def set_kase
      @kase = Kase.find(params[:id])
    end

    def kase_params
      params.require(:kase).permit(:no, :name, :years)
    end
end
