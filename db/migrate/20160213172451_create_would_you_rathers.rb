class CreateWouldYouRathers < ActiveRecord::Migration
  def change
    create_table :would_you_rathers do |t|
      t.text :option

      t.timestamps null: false
    end
  end
end
