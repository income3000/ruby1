class ThomasController < ApplicationController
  before_action :set_thoma, only: %i[ show edit update destroy ]

  # GET /thomas or /thomas.json
  def index
    @thomas = Thoma.all
  end

  # GET /thomas/1 or /thomas/1.json
  def show
  end

  # GET /thomas/new
  def new
    @thoma = Thoma.new
  end

  # GET /thomas/1/edit
  def edit
  end

  # POST /thomas or /thomas.json
  def create
    @thoma = Thoma.new(thoma_params)

    respond_to do |format|
      if @thoma.save
        format.html { redirect_to @thoma, notice: "Thoma was successfully created." }
        format.json { render :show, status: :created, location: @thoma }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thomas/1 or /thomas/1.json
  def update
    respond_to do |format|
      if @thoma.update(thoma_params)
        format.html { redirect_to @thoma, notice: "Thoma was successfully updated." }
        format.json { render :show, status: :ok, location: @thoma }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thomas/1 or /thomas/1.json
  def destroy
    @thoma.destroy
    respond_to do |format|
      format.html { redirect_to thomas_url, notice: "Thoma was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thoma
      @thoma = Thoma.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thoma_params
      params.require(:thoma).permit(:first_name, :last_name, :age, :url)
    end
end
