class CreateUserWouldYouRathers < ActiveRecord::Migration
  def change
    create_table :user_would_you_rathers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :would_you_rather, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
