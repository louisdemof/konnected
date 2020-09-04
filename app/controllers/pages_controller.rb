class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @projects = Project.all
  end

  def homepage
    @projects = Project.all
  end
end
