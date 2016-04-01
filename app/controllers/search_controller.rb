class SearchController < ApplicationController
  def show
  	search_query = params[:search][:title]
  	@results = Subject.where("title like?", "%#{search_query}%")
  end
end
