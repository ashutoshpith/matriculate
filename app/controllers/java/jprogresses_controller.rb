class Java::JprogressesController < ApplicationController
  before_action :set_java_jprogress, only: [:show, :edit, :update, :destroy]

  # GET /java/jprogresses
  # GET /java/jprogresses.json
  def index
    @java_jprogresses = Java::Jprogress.all
  end

  # GET /java/jprogresses/1
  # GET /java/jprogresses/1.json
  def show
  end

  # GET /java/jprogresses/new
  def new
    @java_jprogress = Java::Jprogress.new
  end

  # GET /java/jprogresses/1/edit
  def edit
  end

  # POST /java/jprogresses
  # POST /java/jprogresses.json
  def create
    @java_jprogress = Java::Jprogress.new(java_jprogress_params)

    respond_to do |format|
      if @java_jprogress.save
        format.html { redirect_to @java_jprogress, notice: 'Jprogress was successfully created.' }
        format.json { render :show, status: :created, location: @java_jprogress }
      else
        format.html { render :new }
        format.json { render json: @java_jprogress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /java/jprogresses/1
  # PATCH/PUT /java/jprogresses/1.json
  def update
    respond_to do |format|
      if @java_jprogress.update(java_jprogress_params)
        format.html { redirect_to @java_jprogress, notice: 'Jprogress was successfully updated.' }
        format.json { render :show, status: :ok, location: @java_jprogress }
      else
        format.html { render :edit }
        format.json { render json: @java_jprogress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /java/jprogresses/1
  # DELETE /java/jprogresses/1.json
  def destroy
    @java_jprogress.destroy
    respond_to do |format|
      format.html { redirect_to java_jprogresses_url, notice: 'Jprogress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_jprogress
      @java_jprogress = Java::Jprogress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_jprogress_params
      params.require(:java_jprogress).permit(:heading, :ques, :ans, :point, :input, :output)
    end
end
