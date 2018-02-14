# == Schema Information
#
# Table name: requriments
#
#  id            :integer          not null, primary key
#  front_end     :text(65535)
#  back_end      :text(65535)
#  type_of_model :string(255)
#  project_id    :integer
#  created_by    :integer
#  updated_by    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class RequrimentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
