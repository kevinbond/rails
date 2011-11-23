require 'twiliolib'

class TwilioController < ApplicationController
  DEBUG_OUTBOUND_API_URL = 'https://api.twilio.com/2010-04-01'
  
  # Twilio REST API version
  API_VERSION = '2010-04-01'

  # Twilio AccountSid and AuthToken
  ACCOUNT_SID = 'ACa16b341fff1584438ac1238d98270e84'
  ACCOUNT_TOKEN = '3a7023df6a90964b97a7f079cb289d62'

  OUTGOING_NUMBER = '4155992671'
  
  #Strictly for verifying that Twilio API is working.
  def debug
    #Outgoing
    if params[:call]
      #Outgoing call
      account = Twilio::RestAccount.new(ACCOUNT_SID, ACCOUNT_TOKEN)

      d = {'From' => OUTGOING_NUMBER,
           'To' => '8328654766',
           'Body' => 'Hello, Wes!'}
      resp = account.request("/#{API_VERSION}/Accounts/#{ACCOUNT_SID}/SMS/Messages", 'POST', d)
      resp.error! unless resp.kind_of? Net::HTTPSuccess
      puts "code: %s\nbody: %s" % [resp.code, resp.body]
      render :nothing => true
    #Incoming
    else
      r = Twilio::Response.new
      r.append(Twilio::Say.new("I hear you!"))
      render :xml => r.respond
    end
  end
end