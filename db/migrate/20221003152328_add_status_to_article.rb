# frozen_string_literal: true

class AddStatusToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :status, :string
  end
end
