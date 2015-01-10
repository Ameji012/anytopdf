class PdffilesController < ApplicationController
  before_action :set_pdffile, only: [:show, :edit, :update, :destroy]

  # GET /pdffiles
  # GET /pdffiles.json
  def index
    @pdffiles = Pdffile.all
  end

  # GET /pdffiles/1
  # GET /pdffiles/1.json
  def show
  end

  # GET /pdffiles/new
  def new
    @pdffile = Pdffile.new
  end

  # GET /pdffiles/1/edit
  def edit
  end

  # POST /pdffiles
  # POST /pdffiles.json
  def create
    @pdffile = Pdffile.new(pdffile_params)

    respond_to do |format|
      if @pdffile.save
        format.html { redirect_to @pdffile, notice: 'Pdffile was successfully created.' }
        format.json { render :show, status: :created, location: @pdffile }
      else
        format.html { render :new }
        format.json { render json: @pdffile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdffiles/1
  # PATCH/PUT /pdffiles/1.json
  def update
    respond_to do |format|
      if @pdffile.update(pdffile_params)
        format.html { redirect_to @pdffile, notice: 'Pdffile was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdffile }
      else
        format.html { render :edit }
        format.json { render json: @pdffile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdffiles/1
  # DELETE /pdffiles/1.json
  def destroy
    @pdffile.destroy
    respond_to do |format|
      format.html { redirect_to pdffiles_url, notice: 'Pdffile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdffile
      @pdffile = Pdffile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdffile_params
      params.require(:pdffile).permit(:url, :filename)
    end
end
