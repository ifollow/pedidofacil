class EstoquesController < ApplicationController
  before_action :set_estoque, only: [:show, :edit, :update, :destroy]

  # GET /estoques
  # GET /estoques.json
  def index
    @estoques = Estoque.where("estabelecimento_id =?", session[:id_estabelecimento])
  end

  # GET /estoques/1
  # GET /estoques/1.json
  def show
  end

  # GET /estoques/new
  def new
    @estoque = Estoque.new
  end

  # GET /estoques/1/edit
  def edit
  end

  # POST /estoques
  # POST /estoques.json
  def create
    @estoque = Estoque.new(estoque_params)

    respond_to do |format|
      if @estoque.save
        format.html { redirect_to @estoque, notice: 'Estoque was successfully created.' }
        format.json { render action: 'show', status: :created, location: @estoque }
      else
        format.html { render action: 'new' }
        format.json { render json: @estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estoques/1
  # PATCH/PUT /estoques/1.json
  def update
    respond_to do |format|
      if @estoque.update(estoque_params)
        format.html { redirect_to @estoque, notice: 'Estoque was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estoques/1
  # DELETE /estoques/1.json
  def destroy
    @estoque.destroy
    respond_to do |format|
      format.html { redirect_to estoques_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque
      @estoque = Estoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estoque_params
      params.require(:estoque).permit(:produto_id, :quantidade, :estabelecimento_id)
    end
end
