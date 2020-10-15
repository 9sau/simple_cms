class PagesController < ApplicationController
  layout 'admin'

  def index
    @pages = Page.ordered
  end

  def show
    @page = Page.find_by_id(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      flash[:notice] = "Page #{@page.name} created!"
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @page = Page.find_by_id(params[:id])
  end

  def update
    @page = Page.find_by_id(params[:id])

    if @page.update_attributes(page_params)
      flash[:notice] = "Page #{@page.name} updated!"
      redirect_to(page_path(@page))
    else
      render('edit')
    end
  end

  def delete
    @page = Page.find_by_id(params[:id])
  end

  def destroy
    @page = Page.find_by_id(params[:id])
    @page.destroy
    flash[:notice] = "Page #{@page.name} deleted!"
    redirect_to(pages_path)
  end

  private

  def page_params
    params.require(:page).permit(:name, :visible, :position, :permalink)
  end
end
