class JfsController < ApplicationController
  before_action :set_jf, only: [:show, :edit, :update, :destroy]

  # GET /jfs
  # GET /jfs.json
  def index
    @jfs = Jf.all
  end

  # GET /jfs/1
  # GET /jfs/1.json
  def show
  end

  # GET /jfs/new
  def new
    @jf = Jf.new
  end

  # GET /jfs/1/edit
  def edit
  end

  # POST /jfs
  # POST /jfs.json
  def create
    @jf = Jf.new(jf_params)

    respond_to do |format|
      if @jf.save
        format.html { redirect_to @jf, notice: 'Jf was successfully created.' }
        format.json { render :show, status: :created, location: @jf }
      else
        format.html { render :new }
        format.json { render json: @jf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jfs/1
  # PATCH/PUT /jfs/1.json
  def update
    respond_to do |format|
      if @jf.update(jf_params)
        format.html { redirect_to @jf, notice: 'Jf was successfully updated.' }
        format.json { render :show, status: :ok, location: @jf }
      else
        format.html { render :edit }
        format.json { render json: @jf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jfs/1
  # DELETE /jfs/1.json
  def destroy
    @jf.destroy
    respond_to do |format|
      format.html { redirect_to jfs_url, notice: 'Jf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jf
      @jf = Jf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jf_params
      params.require(:jf).permit(:heading, :ques, :ans, :point, :input, :output, :created_at, :updated_at, :id)
    end
end
