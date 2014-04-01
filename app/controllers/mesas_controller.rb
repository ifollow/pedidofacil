class MesasController < ApplicationController
  before_action :set_mesa, only: [:show, :edit, :update, :destroy]

  # GET /mesas
  # GET /mesas.json
  def index
    @mesas = Mesa.where("estabelecimento_id =? ", session[:id_estabelecimento])
    puts "estab = #{session[:id_estabelecimento]}"
  end

  # GET /mesas/1
  # GET /mesas/1.json
  def show
    @pedidos = Pedido.where("mesa_id =? AND estabelecimento_id =? AND created_at >=? AND flag =?", params[:id], session[:id_estabelecimento], DateTime.now.beginning_of_day, false)
  end

  # GET /mesas/new
  def new
    @mesa = Mesa.new
  end

  # GET /mesas/1/edit
  def edit
  end

  # POST /mesas
  # POST /mesas.json
  def create
    puts mesa_params
    @mesa = Mesa.new(mesa_params)

    respond_to do |format|
      if @mesa.save
        format.html { redirect_to mesas_url, notice: 'Mesa criada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @mesa }
      else
        format.html { render action: 'new' }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mesas/1
  # PATCH/PUT /mesas/1.json
  def update
    respond_to do |format|
      if @mesa.update(mesa_params)
        format.html { redirect_to mesas_url, notice: 'Mesa atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesas/1
  # DELETE /mesas/1.json
  def destroy
    @mesa.destroy
    respond_to do |format|
      format.html { redirect_to mesas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mesa
      @mesa = Mesa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mesa_params
      params.require(:mesa).permit(:numero, :estabelecimento_id)
    end
end
