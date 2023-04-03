class CososController < ApplicationController
  before_action :set_coso, only: %i[ show edit update destroy ]

  # GET /cosos or /cosos.json
  def index
    byebug
    @cosos = Coso.all
  end

  # GET /cosos/1 or /cosos/1.json
  def show
  end

  # GET /cosos/new
  def new
    @coso = Coso.new
  end

  # GET /cosos/1/edit
  def edit
  end

  # POST /cosos or /cosos.json
  def create
    @coso = Coso.new(coso_params)

    respond_to do |format|
      if @coso.save
        format.html { redirect_to coso_url(@coso), notice: "Coso was successfully created." }
        format.json { render :show, status: :created, location: @coso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosos/1 or /cosos/1.json
  def update
    respond_to do |format|
      if @coso.update(coso_params)
        format.html { redirect_to coso_url(@coso), notice: "Coso was successfully updated." }
        format.json { render :show, status: :ok, location: @coso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosos/1 or /cosos/1.json
  def destroy
    @coso.destroy

    respond_to do |format|
      format.html { redirect_to cosos_url, notice: "Coso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coso
      @coso = Coso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coso_params
      params.require(:coso).permit(:name, :description, :number)
    end
end
