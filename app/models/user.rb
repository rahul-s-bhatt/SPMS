# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  role                   :string
#  name                   :string
#  roll_no                :integer
#  branch                 :string
#  year                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  image_url              :text
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :user_groups
  has_many :groups, through: :user_groups

end
