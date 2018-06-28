class JlsController < ApplicationController
  before_action :set_jl, only: [:show, :edit, :update, :destroy]

  # GET /jls
  # GET /jls.json
  def index
    @jls = Jl.all
  end

  # GET /jls/1
  # GET /jls/1.json
  def show
  end

  # GET /jls/new
  def new
    @jl = Jl.new
  end

  # GET /jls/1/edit
  def edit
  end

  # POST /jls
  # POST /jls.json
  def create
    @jl = Jl.new(jl_params)

    respond_to do |format|
      if @jl.save
        format.html { redirect_to @jl, notice: 'Jl was successfully created.' }
        format.json { render :show, status: :created, location: @jl }
      else
        format.html { render :new }
        format.json { render json: @jl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jls/1
  # PATCH/PUT /jls/1.json
  def update
    respond_to do |format|
      if @jl.update(jl_params)
        format.html { redirect_to @jl, notice: 'Jl was successfully updated.' }
        format.json { render :show, status: :ok, location: @jl }
      else
        format.html { render :edit }
        format.json { render json: @jl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jls/1
  # DELETE /jls/1.json
  def destroy
    @jl.destroy
    respond_to do |format|
      format.html { redirect_to jls_url, notice: 'Jl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jl
      @jl = Jl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jl_params
      params.require(:jl).permit(:ques, :ans, :point, :input, :output, :heading, :id)
    end
end
