# == Schema Information
#
# Table name: concepts
#
#  id          :integer          not null, primary key
#  concept     :string
#  date        :datetime
#  description :text
#  difficulty  :integer
#  state       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Concept < ActiveRecord::Base
  belongs_to :user
  has_many :sources
  has_and_belongs_to_many :tags
  enum difficulty: [:easy, :medium, :hard]
  enum state: [:happy, :sad]
end
