class VendamesasController < ApplicationController
  before_action :set_vendamesa, only: [:show, :edit, :update, :destroy]

  # GET /vendamesas
  # GET /vendamesas.json
  def index
    @vendamesas = Vendamesa.all
  end

  # GET /vendamesas/1
  # GET /vendamesas/1.json
  def show
  end

  # GET /vendamesas/new
  def new
    @vendamesa = Vendamesa.new
  end

  # GET /vendamesas/1/edit
  def edit
  end

  # POST /vendamesas
  # POST /vendamesas.json
  def create
    @vendamesa = Vendamesa.new(vendamesa_params)

    respond_to do |format|
      if @vendamesa.save
        @mesa = Mesa.find(@vendamesa.mesa_id)
        @pedidos = Pedido.where("mesa_id = ? AND flag =?", @mesa, false)
        @pedidos.each do |pedido|
         pedido.update_attributes(flag: true)
        end
        
        format.html { redirect_to mesas_path, notice: 'Vendamesa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vendamesa }
      else
        format.html { render action: 'new' }
        format.json { render json: @vendamesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendamesas/1
  # PATCH/PUT /vendamesas/1.json
  def update
    respond_to do |format|
      if @vendamesa.update(vendamesa_params)
        format.html { redirect_to @vendamesa, notice: 'Vendamesa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vendamesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendamesas/1
  # DELETE /vendamesas/1.json
  def destroy
    @vendamesa.destroy
    respond_to do |format|
      format.html { redirect_to vendamesas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendamesa
      @vendamesa = Vendamesa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendamesa_params
      params.require(:vendamesa).permit(:total, :dinheiro, :cartao, :cheque, :nota, :mesa_id, :estabelecimento_id, :funcionario_id, :troco)
    end
end
