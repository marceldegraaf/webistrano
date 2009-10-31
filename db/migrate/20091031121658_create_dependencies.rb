class CreateDependencies < ActiveRecord::Migration
  def self.up
    create_table :dependencies do |t|
      t.string :name
      t.string :current_version
      t.string :available_version
      t.string :source
      t.string :lib
      t.string :requirement
      t.integer :stage_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dependencies
  end
end
