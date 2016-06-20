class << self
  def status_options
    STATUS_VALUES.map { |status| [status_text(status), status] }
  end
end  
