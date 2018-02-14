# == Schema Information
#
# Table name: to_dos
#
#  id          :integer          not null, primary key
#  title       :text(65535)
#  _type       :string(255)
#  status      :string(255)
#  priority    :integer
#  assignee    :integer
#  description :text(65535)
#  project_id  :integer
#  created_by  :integer
#  updated_by  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ToDo < ApplicationRecord
    belongs_to :project
    belongs_to :creator, foreign_key: "created_by", primary_key: "id", class_name: "User"
    belongs_to :assigns, foreign_key: "assignee", primary_key: "id", class_name: "User"
end
