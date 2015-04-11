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
#  user_id     :integer
#

class Concept < ActiveRecord::Base
  belongs_to :user
  has_many :sources
  has_and_belongs_to_many :tags
end
