class Admin::TropoMessagesController < ApplicationController
  active_scaffold :tropo_messages do |config|
    config.list.per_page = 100

    config.actions = [:list, :show]
    config.columns = [:channel, :network, :from, :to, :message, :display_tropo_session, :display_created_at]
    config.columns[:display_tropo_session].label = 'Tropo Session'
    config.columns[:display_created_at].label = 'Timestamp'
  end
end