class AddSeasonToShow < ActiveRecord::Migration

  add_column :shows, :season, :string

end
