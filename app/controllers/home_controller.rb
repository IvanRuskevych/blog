class HomeController < ApplicationController
  before_action :auth

  layout "new_app_layout"

  def index
    @numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ]
    # render json: @numbers
    # render xml: @numbers
    # render html: @numbers
    # render plain: @numbers

    # @text = "<h1>test text</h1>".html_safe
    # @text = "<h1 style='color:red;'><a href='#'>test text</a></h1><script>alert('test alert')</script>".html_safe
    @text = "<h1><a href='#' style='color:red;'>test text</a></h1><script>alert('test alert')</script>".html_safe
  end
end
