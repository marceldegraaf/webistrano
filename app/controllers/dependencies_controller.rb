class DependenciesController < ApplicationController

  skip_before_filter :login_required

  def index
  end

  def create
    stage = Stage.find(params[:stage_id])
    dependencies = params[:dependencies]
    dependencies.each do |dependency|
      stage.dependencies.create!(dependency)
    end
    head :ok
  end

end
