# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  key         :string(255)
#  _type       :string(255)
#  category    :string(255)
#  description :text(65535)
#  start       :date
#  end         :date
#  year        :string(255)
#  group_id    :integer
#  subject_id  :integer
#  created_by  :integer
#  updated_by  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :text(65535)
#

class Project < ApplicationRecord
    belongs_to :group
    has_many :requriments
    belongs_to :subject
    has_many :comments, as: :commentable
    has_many :todos, class_name: "ToDo", foreign_key: "project_id"
end
