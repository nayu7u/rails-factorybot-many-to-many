# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
end
