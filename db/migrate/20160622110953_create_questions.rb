class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string   :title, null: false
      t.text     :question, default: ""
      t.references :user, index: true
      t.integer   :vote_count, default: 0

      t.timestamps(null: false)
    end
  end
end