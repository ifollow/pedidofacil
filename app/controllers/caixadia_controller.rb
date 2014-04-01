class CaixadiaController < ApplicationController
  before_action :set_caixadium, only: [:show, :edit, :update, :destroy]

  # GET /caixadia
  # GET /caixadia.json
  def index
    @caixadia = Caixadium.all.count

  end

  # GET /caixadia/1
  # GET /caixadia/1.json
  def show
  end

  # GET /caixadia/new
  def new
    @caixadia = Caixadium.all.count
    if @caixadia <= 0
    @vazio = true
    @caixadium = Caixadium.new
    else
    @caixadium = Caixadium.last
    @caixa  = Caixadium.last
    @pedidos = Pedido.where("estabelecimento_id =? AND flag =?", session[:id_estabelecimento], true)
    @pedidos.each do |pedido|
    @valor = @valor.to_f + pedido.produto.preco.to_f
    end
    @dinheiro = @caixa.salant.to_f + @valor.to_f
    @saldo_atual = (@caixa.salant.to_f + @caixa.cheque.to_f + @caixa.cartao.to_f + @caixa.prazo.to_f + @caixa.receb.to_f + @dinheiro.to_f) - @caixa.pagtodiv.to_f
    end
  end

  # GET /caixadia/1/edit
  def edit
    @caixadia = Caixadium.all.count
    if @caixadia <= 0
    @vazio = true
    @caixadium = Caixadium.new
    else
    @caixadium = Caixadium.last
    @caixa  = Caixadium.last
    @pedidos = Pedido.where("estabelecimento_id =?", session[:id_estabelecimento])
    @pedidos.each do |pedido|
    @valor = @valor.to_f + pedido.produto.preco.to_f
    end
    @dinheiro = @caixa.salant.to_f + @valor.to_f
    @saldo_atual = (@caixa.salant.to_f + @caixa.cheque.to_f + @caixa.cartao.to_f + @caixa.prazo.to_f + @caixa.receb.to_f + @dinheiro.to_f) - @caixa.pagtodiv.to_f
    end
  end

  # POST /caixadia
  # POST /caixadia.json
  def create
    @caixadium = Caixadium.new(caixadium_params)

    respond_to do |format|
      if @caixadium.save
        format.html { redirect_to :controller => 'caixadia', :action => 'edit', notice: 'Caixa Aberto.' }
        format.json { render action: 'show', status: :created, location: @caixadium }
      else
        format.html { render action: 'new' }
        format.json { render json: @caixadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caixadia/1
  # PATCH/PUT /caixadia/1.json
  def update
    @caixaano = Caixaano.new(caixadium_params)
    @caixaano.save
    respond_to do |format|
      if @caixadium.update(caixadium_params)
        format.html { redirect_to :controller => 'caixadia', :action => 'edit', notice: 'Caixa Aberto.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caixadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caixadia/1
  # DELETE /caixadia/1.json
  def destroy
    @caixadium.destroy
    respond_to do |format|
      format.html { redirect_to caixadia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caixadium
      @caixadium = Caixadium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caixadium_params
      params.require(:caixadium).permit(:datcai, :dinheiro, :cheque, :cartao, :prazo, :pagtodiv, :receb, :salant, :salprox, :salcaixa, :estabelecimento_id, :obscai, :hormov)
    end
end
