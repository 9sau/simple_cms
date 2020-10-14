class DemoController < ApplicationController
  layout false

  def hello
    @id = params[:id]
    @page = params['page']
    render('hello')
  end

  def index
  end
end
