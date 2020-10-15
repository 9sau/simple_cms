class SectionsController < ApplicationController
  layout 'admin'

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find_by_id(params[:id])
  end

  def new
    @section = Section.new
    @sections_count = Section.count + 1
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      flash[:notice] = "Section #{@section.name} created!"
      redirect_to(sections_path)
    else
      @sections_count = Section.count + 1
      render('new')
    end
  end

  def edit
    @section = Section.find_by_id(params[:id])
    @sections_count = Section.count
  end

  def update
    @section = Section.find_by_id(params[:id])

    if @section.update_attributes(section_params)
      flash[:notice] = "Section #{@section.name} updated!"
      redirect_to(section_path(@section))
    else
      @sections_count = Section.count
      render('edit')
    end
  end

  def delete
    @section = Section.find_by_id(params[:id])
  end

  def destroy
    @section = Section.find_by_id(params[:id])
    @section.destroy
    flash[:notice] = "Section #{@section.name} deleted!"
    redirect_to(sections_path)
  end

  private

  def section_params
    params.require(:section).permit(:name, :position, :visible, :content_type, :content)
  end
end
