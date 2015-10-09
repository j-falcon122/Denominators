class NumbersController < ApplicationController
  before_action :set_number, only: [:show, :edit, :update, :destroy]

  # GET /numbers
  # GET /numbers.json
  def index
    @numbers = Number.all

  end

  def create 
    @number = Number.new
    # binding.pry 
    @number.value = number_params
    @number.save    
    render 'show'
  end

  def show
  # binding.pry
    # @numbers = 
  end

  # def new
  #   @number = Number.new
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number
      binding.pry
      @number = Number.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_params
      params[:number].to_f
    end
end
