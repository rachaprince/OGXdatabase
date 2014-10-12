class TraineeshipsController < ApplicationController
  before_action :set_traineeship, only: [:show, :edit, :update, :destroy]

  # GET /traineeships
  # GET /traineeships.json
  def index
    @traineeships = Traineeship.all
  end

  # GET /traineeships/1
  # GET /traineeships/1.json
  def show
  end

  # GET /traineeships/new
  def new
    @traineeship = Traineeship.new
  end

  # GET /traineeships/1/edit
  def edit
  end

  # POST /traineeships
  # POST /traineeships.json
  def create
    @traineeship = Traineeship.new(traineeship_params)

    respond_to do |format|
      if @traineeship.save
        format.html { redirect_to @traineeship, notice: 'Traineeship was successfully created.' }
        format.json { render :show, status: :created, location: @traineeship }
      else
        format.html { render :new }
        format.json { render json: @traineeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traineeships/1
  # PATCH/PUT /traineeships/1.json
  def update
    respond_to do |format|
      if @traineeship.update(traineeship_params)
        format.html { redirect_to @traineeship, notice: 'Traineeship was successfully updated.' }
        format.json { render :show, status: :ok, location: @traineeship }
      else
        format.html { render :edit }
        format.json { render json: @traineeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traineeships/1
  # DELETE /traineeships/1.json
  def destroy
    @traineeship.destroy
    respond_to do |format|
      format.html { redirect_to traineeships_url, notice: 'Traineeship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traineeship
      @traineeship = Traineeship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traineeship_params
      params.require(:traineeship).permit(:ep_name, :ep_email, :manager_name, :manager_email, :region, :country, :lc, :tn_name, :start, :end, :rate_lc, :rate_tn, :tn_comments, :aiesec_comments)
    end
end
