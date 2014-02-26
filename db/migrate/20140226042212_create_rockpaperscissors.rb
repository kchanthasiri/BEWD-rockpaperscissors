class CreateRockpaperscissors < ActiveRecord::Migration
  def change
    create_table :rockpaperscissors do |t|

      t.timestamps
    end
  end
end
