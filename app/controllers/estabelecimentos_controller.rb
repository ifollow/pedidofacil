class EstabelecimentosController < ApplicationController
  before_action :set_estabelecimento, only: [:show, :edit, :update, :destroy]

  # GET /estabelecimentos
  # GET /estabelecimentos.json
  def index
    @estabelecimentos = Estabelecimento.all
  end

  # GET /estabelecimentos/1
  # GET /estabelecimentos/1.json
  def show
  end

  # GET /estabelecimentos/new
  def new
    @estabelecimento = Estabelecimento.new
  end

  # GET /estabelecimentos/1/edit
  def edit
  end

  # POST /estabelecimentos
  # POST /estabelecimentos.json
  def create
    @estabelecimento = Estabelecimento.new(estabelecimento_params)

    respond_to do |format|
      if @estabelecimento.save
        format.html { redirect_to estabelecimentos_url, notice: 'Estabelecimento criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @estabelecimento }
      else
        format.html { render action: 'new' }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estabelecimentos/1
  # PATCH/PUT /estabelecimentos/1.json
  def update
    respond_to do |format|
      if @estabelecimento.update(estabelecimento_params)
        format.html { redirect_to estabelecimentos_url, notice: 'Estabelecimento atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estabelecimentos/1
  # DELETE /estabelecimentos/1.json
  def destroy
    @estabelecimento.destroy
    respond_to do |format|
      format.html { redirect_to estabelecimentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estabelecimento
      @estabelecimento = Estabelecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estabelecimento_params
      params.require(:estabelecimento).permit(:nome, :endereco, :telefone, :razao_social, :responsavel, :tel_responsavel, :image_restaurante, :codigo)
    end
end
