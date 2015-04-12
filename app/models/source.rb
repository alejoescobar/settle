# == Schema Information
#
# Table name: sources
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  concept_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Source < ActiveRecord::Base
  belongs_to :concept
end
