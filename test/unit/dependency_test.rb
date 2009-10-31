require File.dirname(__FILE__) + '/../test_helper'

class DependencyTest < ActiveSupport::TestCase
  def test_validations
    assert_equal 0, Stage.count

    d = Dependency.new

    assert !d.valid?
    assert_not_nil d.errors.on('name')
  end

  def test_updateable
    d = Dependency.new(:name => 'haml', :current_version => '1.0.0', :available_version => '1.1.0')
    d2 = Dependency.new(:name => 'haml', :current_version => '1.0.0', :available_version => '0.9')
    assert_equal d.updateable?, true
    assert_equal d2.updateable?, false
  end
end
