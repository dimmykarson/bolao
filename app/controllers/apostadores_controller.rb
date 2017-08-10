class ApostadoresController < ApplicationController
  before_action :set_apostador, only: [:show, :edit, :update, :destroy]

  # GET /apostadores
  # GET /apostadores.json
  def index
    @apostadores = Apostador.all
  end

  # GET /apostadores/1
  # GET /apostadores/1.json
  def show
  end

  # GET /apostadores/new
  def new
    @apostador = Apostador.new
  end

  # GET /apostadores/1/edit
  def edit
  end

  # POST /apostadores
  # POST /apostadores.json
  def create
    @apostador = Apostador.new(apostador_params)

    respond_to do |format|
      if @apostador.save
        format.html { redirect_to @apostador, notice: 'Apostador was successfully created.' }
        format.json { render :show, status: :created, location: @apostador }
      else
        format.html { render :new }
        format.json { render json: @apostador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apostadores/1
  # PATCH/PUT /apostadores/1.json
  def update
    respond_to do |format|
      if @apostador.update(apostador_params)
        format.html { redirect_to @apostador, notice: 'Apostador was successfully updated.' }
        format.json { render :show, status: :ok, location: @apostador }
      else
        format.html { render :edit }
        format.json { render json: @apostador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apostadores/1
  # DELETE /apostadores/1.json
  def destroy
    @apostador.destroy
    respond_to do |format|
      format.html { redirect_to apostadores_url, notice: 'Apostador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apostador
      @apostador = Apostador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apostador_params
      params.require(:apostador).permit(:nome, :email)
    end
end
