class SearchController < ApplicationController

  def index
    @links = Link.basic_search(title: params[:q])
  end

end