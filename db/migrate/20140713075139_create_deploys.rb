class CreateDeploys < ActiveRecord::Migration
  def change
    create_table :deploys do |t|
      t.text :tag
      t.text :migration

      t.timestamps
    end
  end
end
