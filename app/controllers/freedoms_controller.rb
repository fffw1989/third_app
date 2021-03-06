class FreedomsController < ApplicationController
  before_action :set_freedom, only: [:show, :edit, :update, :destroy]

  # GET /freedoms
  # GET /freedoms.json
  def index
    @freedoms = Freedom.all
  end

  # GET /freedoms/1
  # GET /freedoms/1.json
  def show
  end

  # GET /freedoms/new
  def new
    @freedom = Freedom.new
  end

  # GET /freedoms/1/edit
  def edit
  end

  # POST /freedoms
  # POST /freedoms.json
  def create
    @freedom = Freedom.new(freedom_params)

    respond_to do |format|
      if @freedom.save
        format.html { redirect_to @freedom, notice: 'Freedom was successfully created.' }
        format.json { render :show, status: :created, location: @freedom }
      else
        format.html { render :new }
        format.json { render json: @freedom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freedoms/1
  # PATCH/PUT /freedoms/1.json
  def update
    respond_to do |format|
      if @freedom.update(freedom_params)
        format.html { redirect_to @freedom, notice: 'Freedom was successfully updated.' }
        format.json { render :show, status: :ok, location: @freedom }
      else
        format.html { render :edit }
        format.json { render json: @freedom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freedoms/1
  # DELETE /freedoms/1.json
  def destroy
    @freedom.destroy
    respond_to do |format|
      format.html { redirect_to freedoms_url, notice: 'Freedom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freedom
      @freedom = Freedom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freedom_params
      params.require(:freedom).permit(:title, :number)
    end
end
