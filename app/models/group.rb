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

class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, :through=> :user_groups
  def self.init_group
    year = Time.now.year
    month = Time.now.month
    return unless Group.where(year:year, month:month).blank?
    user_ids = User.pluck(:id)
    #获取循环次数
    circulate = if user_ids.size % 3 == 0
      user_ids.size / 3
    else
      (user_ids.size / 3) + 1
    end
    done_arraies = [] #分组信息
    #执行分组
    circulate.times do |i|
      pluck_array = user_ids.sample(3)
      done_arraies << pluck_array
      user_ids -= pluck_array
    end

    done_arraies.map do |arrs|
      group = Group.create(name:"#{year}_#{month}_U_#{arrs.join('_')}",year:year, month:month)
      arrs.map { |i|
        group.user_groups.create(group_id:group.id,user_id:i)
       }
    end
  end
end
