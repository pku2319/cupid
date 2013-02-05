class CreateCupidMatches < ActiveRecord::Migration
  def change
    create_table :cupid_matches do |t|
      t.integer :dater_id
      t.integer :percent

      t.timestamps
    end
  end
end
