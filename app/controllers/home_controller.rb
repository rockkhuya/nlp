class HomeController < ApplicationController
  def index
    @doc = Document.new
  end
end
