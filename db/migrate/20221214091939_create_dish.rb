# frozen_string_literal: true

class CreateDish < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string 'ingredients', array: true
      t.timestamps
    end
  end
end
