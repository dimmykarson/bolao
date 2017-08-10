class ApostaitemsController < ApplicationController
  before_action :set_apostaitem, only: [:show, :edit, :update, :destroy]

  # GET /apostaitems
  # GET /apostaitems.json
  def index
    @apostaitems = Apostaitem.all
  end

  # GET /apostaitems/1
  # GET /apostaitems/1.json
  def show
  end

  # GET /apostaitems/new
  def new
    @apostaitem = Apostaitem.new
  end

  # GET /apostaitems/1/edit
  def edit
  end

  # POST /apostaitems
  # POST /apostaitems.json
  def create
    @apostaitem = Apostaitem.new(apostaitem_params)

    respond_to do |format|
      if @apostaitem.save
        format.html { redirect_to @apostaitem, notice: 'Apostaitem was successfully created.' }
        format.json { render :show, status: :created, location: @apostaitem }
      else
        format.html { render :new }
        format.json { render json: @apostaitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apostaitems/1
  # PATCH/PUT /apostaitems/1.json
  def update
    respond_to do |format|
      if @apostaitem.update(apostaitem_params)
        format.html { redirect_to @apostaitem, notice: 'Apostaitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @apostaitem }
      else
        format.html { render :edit }
        format.json { render json: @apostaitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apostaitems/1
  # DELETE /apostaitems/1.json
  def destroy
    @apostaitem.destroy
    respond_to do |format|
      format.html { redirect_to apostaitems_url, notice: 'Apostaitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apostaitem
      @apostaitem = Apostaitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apostaitem_params
      params.require(:apostaitem).permit(:aposta_id, :colocacao, :clube_id)
    end
end
