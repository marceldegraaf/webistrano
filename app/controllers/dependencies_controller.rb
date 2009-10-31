class DependenciesController < ApplicationController

  skip_before_filter :login_required

  def index
  end

  def create
    @dependency = Dependency.new(params[:dependency])
    if @dependency.save!
      head :ok
    end
  end

end
