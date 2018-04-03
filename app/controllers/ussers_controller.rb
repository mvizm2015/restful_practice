class UssersController < ApplicationController
  before_action :set_usser, only: [:show, :edit, :update, :destroy]

  # GET /ussers
  # GET /ussers.json
  def index
    @ussers = Usser.all
  end

  # GET /ussers/1
  # GET /ussers/1.json
  def show
  end

  # GET /ussers/new
  def new
    @usser = Usser.new
  end

  # GET /ussers/1/edit
  def edit
  end

  # POST /ussers
  # POST /ussers.json
  def create
    @usser = Usser.new(usser_params)

    respond_to do |format|
      if @usser.save
        format.html { redirect_to @usser, notice: 'Usser was successfully created.' }
        format.json { render :show, status: :created, location: @usser }
      else
        format.html { render :new }
        format.json { render json: @usser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ussers/1
  # PATCH/PUT /ussers/1.json
  def update
    respond_to do |format|
      if @usser.update(usser_params)
        format.html { redirect_to @usser, notice: 'Usser was successfully updated.' }
        format.json { render :show, status: :ok, location: @usser }
      else
        format.html { render :edit }
        format.json { render json: @usser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ussers/1
  # DELETE /ussers/1.json
  def destroy
    @usser.destroy
    respond_to do |format|
      format.html { redirect_to ussers_url, notice: 'Usser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usser
      @usser = Usser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usser_params
      params.fetch(:usser, {})
    end
end
