# == Schema Information
#
# Table name: sign_cards
#
#  id         :integer          not null, primary key
#  group_id   :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SignCard < ApplicationRecord
  belongs_to :group
  belongs_to :user
end
