class TestPrint
  include Sidekiq::Worker
  sidekiq_options :queue => :critical

  def perform(str)
    logger.info "Things are happening"
    logger.debug "Here's some info #{hash.inspect}"
    puts "output: #{str}"
  end
end
