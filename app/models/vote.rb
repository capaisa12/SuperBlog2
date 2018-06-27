# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
