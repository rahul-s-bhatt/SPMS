# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  key         :string
#  _type       :string
#  category    :string
#  description :text
#  start       :date
#  end         :date
#  year        :string
#  group_id    :integer
#  subject_id  :integer
#  created_by  :integer
#  updated_by  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :text
#

class Project < ApplicationRecord
    belongs_to :group
    has_many :requriments
    belongs_to :subject
    has_many :comments, as: :commentable
    has_many :todos
end
