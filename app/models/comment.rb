# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  content          :text
#  commentable_type :string
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
