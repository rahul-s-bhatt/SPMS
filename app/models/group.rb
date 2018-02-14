# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :integer
#  criteria   :string
#  created_by :integer
#  updated_by :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :text
#

class Group < ApplicationRecord

    has_many :user_groups
    has_many :users, through: :user_groups

    after_create :create_user_group


    private

    def create_user_group
        UserGroup.create({
            user_id: self.created_by,
            group_id: self.id,
            created_by: self.created_by,
            updated_by: self.created_by
        })
    end

end
