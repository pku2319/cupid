class CreateDaters < ActiveRecord::Migration
  def change
    create_table :daters do |t|
      t.string :first_name
      t.string :last_name
      t.string :cupid_name
      t.string :cupid_pass

      t.timestamps
    end
  end
end
