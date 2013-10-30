class PagesController < ApplicationController
  layout "targetrite"
  def show
    render template: "pages/#{params[:id] || "index"}"
  end

end
