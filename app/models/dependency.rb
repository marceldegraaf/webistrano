class Dependency < ActiveRecord::Base
  belongs_to :stage

  validates_presence_of :name, :current_version, :available_version

  def updateable?
    available_version > current_version
  end
end
