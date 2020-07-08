class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.references :user, foreign_key: true
      t.datetime :created_at, null: false
    end
  end
end
