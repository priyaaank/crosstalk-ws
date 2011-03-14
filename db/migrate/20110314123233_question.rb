class Question < ActiveRecord::Migration
  def self.up
    create_table :questions do |q|
      q.string :title
      q.text :text
      q.datetime :asked_date

      q.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
