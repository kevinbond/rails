class TropoSession < ActiveRecord::Base
  has_many :tropo_answers
  has_many :tropo_messages
end

# == Schema Information
#
# Table name: tropo_sessions
#
#  id         :integer         not null, primary key
#  session_id :string(255)
#  network    :string(255)
#  username   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

