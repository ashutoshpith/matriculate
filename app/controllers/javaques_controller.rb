class JavaquesController < ApplicationController
  before_action :set_javaque, only: [:show, :edit, :update, :destroy]

  # GET /javaques
  # GET /javaques.json
  def index
    @javaques = Javaque.all
  end

  # GET /javaques/1
  # GET /javaques/1.json
  def show
  end

  # GET /javaques/new
  def new
    @javaque = Javaque.new
  end

  # GET /javaques/1/edit
  def edit
  end

  # POST /javaques
  # POST /javaques.json
  def create
    @javaque = Javaque.new(javaque_params)

    respond_to do |format|
      if @javaque.save
        format.html { redirect_to @javaque, notice: 'Javaque was successfully created.' }
        format.json { render :show, status: :created, location: @javaque }
      else
        format.html { render :new }
        format.json { render json: @javaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /javaques/1
  # PATCH/PUT /javaques/1.json
  def update
    respond_to do |format|
      if @javaque.update(javaque_params)
        format.html { redirect_to @javaque, notice: 'Javaque was successfully updated.' }
        format.json { render :show, status: :ok, location: @javaque }
      else
        format.html { render :edit }
        format.json { render json: @javaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /javaques/1
  # DELETE /javaques/1.json
  def destroy
    @javaque.destroy
    respond_to do |format|
      format.html { redirect_to javaques_url, notice: 'Javaque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_javaque
      @javaque = Javaque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def javaque_params
      params.require(:javaque).permit(:heading, :question, :answer, :input, :output, :point)
    end
end
