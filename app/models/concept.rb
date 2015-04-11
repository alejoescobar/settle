class Concept < ActiveRecord::Base
  belongs_to :user
  has_many :sources
  has_and_belongs_to_many :tags
end
