class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :name
      t.references :year_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
