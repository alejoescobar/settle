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

require 'test_helper'

class ConceptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
