class TropoMessage < ActiveRecord::Base
  belongs_to :tropo_session

  def display_tropo_session
    tropo_session ? tropo_session.session_id : 'NONE'
  end

  def display_created_at
    created_at.strftime("%a, %b %d %Y %H:%M:%S")
  end
end



# == Schema Information
#
# Table name: tropo_messages
#
#  id               :integer         not null, primary key
#  channel          :string(255)
#  network          :string(255)
#  from             :string(255)
#  to               :string(255)
#  message          :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  tropo_session_id :string(255)
#

