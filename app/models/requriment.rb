# == Schema Information
#
# Table name: requriments
#
#  id            :integer          not null, primary key
#  front_end     :text
#  back_end      :text
#  type_of_model :string
#  project_id    :integer
#  created_by    :integer
#  updated_by    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Requriment < ApplicationRecord
    
end
