class JpsController < ApplicationController
  before_action :set_jp, only: [:show, :edit, :update, :destroy]

  # GET /jps
  # GET /jps.json
  def index
    @jps = Jp.all
  end

  # GET /jps/1
  # GET /jps/1.json
  def show
  end

  # GET /jps/new
  def new
    @jp = Jp.new
  end

  # GET /jps/1/edit
  def edit
  end

  # POST /jps
  # POST /jps.json
  def create
    @jp = Jp.new(jp_params)

    respond_to do |format|
      if @jp.save
        format.html { redirect_to @jp, notice: 'Jp was successfully created.' }
        format.json { render :show, status: :created, location: @jp }
      else
        format.html { render :new }
        format.json { render json: @jp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jps/1
  # PATCH/PUT /jps/1.json
  def update
    respond_to do |format|
      if @jp.update(jp_params)
        format.html { redirect_to @jp, notice: 'Jp was successfully updated.' }
        format.json { render :show, status: :ok, location: @jp }
      else
        format.html { render :edit }
        format.json { render json: @jp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jps/1
  # DELETE /jps/1.json
  def destroy
    @jp.destroy
    respond_to do |format|
      format.html { redirect_to jps_url, notice: 'Jp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jp
      @jp = Jp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jp_params
      params.require(:jp).permit(:ques, :ans, :point, :input, :output, :id, :heading, :created_at, :updated_at)
    end
end
