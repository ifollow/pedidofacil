class VendabalcaosController < ApplicationController
  before_action :set_vendabalcao, only: [:show, :edit, :update, :destroy]

  # GET /vendabalcaos
  # GET /vendabalcaos.json
  def index
    @vendabalcaos = Vendabalcao.all
  end

  # GET /vendabalcaos/1
  # GET /vendabalcaos/1.json
  def show
  end

  # GET /vendabalcaos/new
  def new
    @vendabalcao = Vendabalcao.new
  end

  # GET /vendabalcaos/1/edit
  def edit
  end

  # POST /vendabalcaos
  # POST /vendabalcaos.json
  def create
    @vendabalcao = Vendabalcao.new(vendabalcao_params)

    respond_to do |format|
      if @vendabalcao.save
        @mesa = Mesa.last
        @pedidos = Pedido.where("mesa_id = ? AND flag =?", @mesa, false)

        @pedidos.each do |pedido|
         pedido.update_attributes(flag: true)
        end

        format.html { redirect_to pedidos_url, notice: 'Vendabalcao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vendabalcao }
      else
        format.html { render action: 'new' }
        format.json { render json: @vendabalcao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendabalcaos/1
  # PATCH/PUT /vendabalcaos/1.json
  def update
    respond_to do |format|
      if @vendabalcao.update(vendabalcao_params)
        format.html { redirect_to @vendabalcao, notice: 'Vendabalcao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vendabalcao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendabalcaos/1
  # DELETE /vendabalcaos/1.json
  def destroy
    @vendabalcao.destroy
    respond_to do |format|
      format.html { redirect_to vendabalcaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendabalcao
      @vendabalcao = Vendabalcao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendabalcao_params
      params.require(:vendabalcao).permit(:total, :dinheiro, :cartao, :cheque, :nota, :estabelecimento_id, :funcionario_id, :pedido_id)
    end
end
