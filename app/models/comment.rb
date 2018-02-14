# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  content          :text(65535)
#  commentable_type :string(255)
#  commentable_id   :integer
#  created_by       :integer
#  updated_by       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

# class Comment < ApplicationRecord
class Comment < ActiveRecord::Base
  # attr_accessor :content
  belongs_to :commentable, polymorphic: true
  belongs_to :user, primary_key: :id, foreign_key: :created_by
end
