require 'rest-client'

class KoachedContentClient
  @@logger = ::Rails.logger
  @@configuration = YAML.load_file("#{Rails.root}/config/content.yml")

  cattr_accessor :configuration

  def send_answer(network, from, answer, ask_id = nil)
    url = "#{@base_url}?auth_token=#{@token}"
    params = {:answer => answer, :network => network, :from => from}
    params.merge!(:ask_id => ask_id) if ask_id

    loggable_params = params.map {|k, v| "#{k} => #{v}"}.join(", ")
    @@logger.info("Sending answer back to Koached content by POSTing to #{url} with params #{loggable_params}")
    resp = RestClient.post url, params
    @@logger.info("Received response #{resp.inspect} with status code #{resp.code}")

    raise "Problem talking to content site" unless [200, 201].include?(resp.code) #HTTP Created status
    resp.body
  end

private
  def initialize(entry_point)
    @base_url = configuration[entry_point]['url']
    @token = configuration[entry_point]['token']
  end
end