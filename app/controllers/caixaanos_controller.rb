class CaixaanosController < ApplicationController
  before_action :set_caixaano, only: [:show, :edit, :update, :destroy]

  # GET /caixaanos
  # GET /caixaanos.json
  def index
    @caixaanos = Caixaano.all
  end

  # GET /caixaanos/1
  # GET /caixaanos/1.json
  def show
  end

  # GET /caixaanos/new
  def new
    @caixaano = Caixaano.new
  end

  # GET /caixaanos/1/edit
  def edit
  end

  # POST /caixaanos
  # POST /caixaanos.json
  def create
    @caixaano = Caixaano.new(caixaano_params)

    respond_to do |format|
      if @caixaano.save
        format.html { redirect_to @caixaano, notice: 'Caixaano was successfully created.' }
        format.json { render action: 'show', status: :created, location: @caixaano }
      else
        format.html { render action: 'new' }
        format.json { render json: @caixaano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caixaanos/1
  # PATCH/PUT /caixaanos/1.json
  def update
    respond_to do |format|
      if @caixaano.update(caixaano_params)
        format.html { redirect_to @caixaano, notice: 'Caixaano was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caixaano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caixaanos/1
  # DELETE /caixaanos/1.json
  def destroy
    @caixaano.destroy
    respond_to do |format|
      format.html { redirect_to caixaanos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caixaano
      @caixaano = Caixaano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caixaano_params
      params.require(:caixaano).permit(:datcai, :dinheiro, :cheque, :cartao, :prazo, :pagtodiv, :receb, :salant, :salprox, :salcaixa, :estabelecimento_id, :obscai, :hormov)
    end
end
