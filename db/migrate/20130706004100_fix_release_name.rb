class FixReleaseName < ActiveRecord::Migration
    def self.up
      rename_column :screenings, :release_date, :genre
    end

    def self.down
      # rename back if you need or do something else or do nothing
    end
  end