class MimosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  # GET /mimos
  # GET /mimos.json
  def index
    if params[:city].present?
      @mimos = Mimo.where(address: nil)
    else
      @mimos = Mimo.all.page(params[:page]).per(6)
    end
  end

  # GET /mimos/1
  # GET /mimos/1.json
  def show
    @mimo = Mimo.find(params[:id])
  end

  # GET /mimos/new
  def new
    @mimo = current_user.mimos.new
  end

  # GET /mimos/1/edit
  def edit
    @mimo = current_user.mimos.find(params[:id])
  end

  # POST /mimos
  # POST /mimos.json
  def create
    @mimo = current_user.mimos.new(mimo_params)

    respond_to do |format|
      if @mimo.save
        format.html { redirect_to @mimo, notice: 'Mimo was successfully created.' }
        format.json { render :show, status: :created, location: @mimo }
      else
        format.html { render :new }
        format.json { render json: @mimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mimos/1
  # PATCH/PUT /mimos/1.json
  def update
    @mimo = current_user.mimos.find(params[:id])

    respond_to do |format|
      if @mimo.update(mimo_params)
        format.html { redirect_to @mimo, notice: 'Mimo was successfully updated.' }
        format.json { render :show, status: :ok, location: @mimo }
      else
        format.html { render :edit }
        format.json { render json: @mimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mimos/1
  # DELETE /mimos/1.json
  def destroy
    @mimo = current_user.mimos.find(params[:id])
    @mimo.photo = nil
    @mimo.destroy
    respond_to do |format|
      format.html { redirect_to mimos_url, notice: 'Mimo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def mimo_params
      params.require(:mimo).permit(:title, :case, :description, :race, :size, :address,
        :mimo_case, :coordinates, :name, :color1, :color2, :gender, :age, :photo)
    end
end
