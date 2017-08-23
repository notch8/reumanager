class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy]

  # GET /universities
  def index
    @universities = University.all
  end

  # GET /universities/1
  def show
  end

  # GET /universities/new
  def new
    @university = University.new
  end

  # GET /universities/1/edit
  def edit
  end

  # POST /universities
  def create
    @university = University.new(university_params)

    if @university.save
      redirect_to @university, notice: 'University was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /universities/1
  def update
    if @university.update(university_params)
      redirect_to @university, notice: 'University was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /universities/1
  def destroy
    @university.destroy
    redirect_to universities_url, notice: 'University was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def university_params
      params.require(:university).permit(:name, :subdomain)
    end
end
