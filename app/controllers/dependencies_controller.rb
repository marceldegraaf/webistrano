class DependenciesController < ApplicationController

  skip_before_filter :login_required

  def index
  end

  def create
    dependencies = params[:dependencies]
    dependencies.each do |dependency|
      Dependency.create!(dependency)
    end
    head :ok
  end

end
