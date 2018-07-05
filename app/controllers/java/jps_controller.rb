class Java::JpsController < ApplicationController
  before_action :set_java_jp, only: [:show, :edit, :update, :destroy]

  # GET /java/jps
  # GET /java/jps.json
  def index
    @java_jps = Java::Jp.all
  end

  # GET /java/jps/1
  # GET /java/jps/1.json
  def show
  end

  # GET /java/jps/new
  def new
    @java_jp = Java::Jp.new
  end

  # GET /java/jps/1/edit
  def edit
  end

  # POST /java/jps
  # POST /java/jps.json
  def create
    @java_jp = Java::Jp.new(java_jp_params)

    respond_to do |format|
      if @java_jp.save
        format.html { redirect_to @java_jp, notice: 'Jp was successfully created.' }
        format.json { render :show, status: :created, location: @java_jp }
      else
        format.html { render :new }
        format.json { render json: @java_jp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /java/jps/1
  # PATCH/PUT /java/jps/1.json
  def update
    respond_to do |format|
      if @java_jp.update(java_jp_params)
        format.html { redirect_to @java_jp, notice: 'Jp was successfully updated.' }
        format.json { render :show, status: :ok, location: @java_jp }
      else
        format.html { render :edit }
        format.json { render json: @java_jp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /java/jps/1
  # DELETE /java/jps/1.json
  def destroy
    @java_jp.destroy
    respond_to do |format|
      format.html { redirect_to java_jps_url, notice: 'Jp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_jp
      @java_jp = Java::Jp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_jp_params
      params.require(:java_jp).permit(:heading, :ques, :ans, :input, :output, :point, :editor)
    end
end
