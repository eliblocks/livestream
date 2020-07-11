class PagesController < ApplicationController
  def landing
    render 'landing', layout: false
  end
end
