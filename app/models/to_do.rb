# == Schema Information
#
# Table name: to_dos
#
#  id          :integer          not null, primary key
#  title       :text
#  _type       :string
#  status      :string
#  priority    :integer
#  assignee    :integer
#  description :text
#  project_id  :integer
#  created_by  :integer
#  updated_by  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ToDo < ApplicationRecord
end
