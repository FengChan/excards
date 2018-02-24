# == Schema Information
#
# Table name: groups
#
#  id            :integer          not null, primary key
#  name          :integer
#  year          :integer
#  month         :integer
#  mark_time     :datetime
#  old_day_count :integer
#  max_day_count :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
