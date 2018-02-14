# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  role                   :string(255)
#  name                   :string(255)
#  roll_no                :integer
#  branch                 :string(255)
#  year                   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  image_url              :text(65535)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
