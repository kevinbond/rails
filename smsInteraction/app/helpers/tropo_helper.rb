module TropoHelper
  #Need to make this smarter to handle different kinds of sessions.
  #For now, assume that a non-SMS network is IM of some kind and use HTML line breaks.
  def nl(network)
    nl = network != 'SMS' ? "<br/>" : "\r\n"
  end
end