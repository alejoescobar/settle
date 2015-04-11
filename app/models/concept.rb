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
end
