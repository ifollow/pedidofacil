class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.where("estabelecimento_id =? AND created_at >?", session[:id_estabelecimento], DateTime.now.beginning_of_day)
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    @abater_estoque = pedido_params[:quantidade]

    @busca_estoque_produto = Estoque.where("produto_id =?", pedido_params[:produto_id]).first

    @aux = @busca_estoque_produto.quantidade.to_i - @abater_estoque.to_i

    #puts @aux

    @busca_estoque_produto.update_attributes(:quantidade => @aux)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to pedidos_url, notice: 'Pedido efetuado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @pedido }
      else
        format.html { render action: 'new' }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to pedidos_url, notice: 'Pedido atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url }
      format.json { head :no_content }
    end
  end

  def fechar
    @pedido = Pedido.find(params[:id])
    respond_to do |format|
    if @pedido.update_attributes(:flag => true)
    format.html { redirect_to pedidos_url, notice: 'Pedido fechado com sucesso.' }
    end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    def close_pedido
      @pedido.update_attributes(:flag => true)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:produto_id, :mesa_id, :observacao, :estabelecimento_id, :quantidade, :funcionario_id, :datapedido, :flag)
    end
end
