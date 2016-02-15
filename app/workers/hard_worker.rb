class HardWorker
  include Sidekiq::Worker
  sidekiq_options :retry => 5 #set number times retry

  sidekiq_retry_in do |count| #set delay time retry in second
    10 * (count + 1)
  end

  sidekiq_retries_exhausted do |msg| #set message return when have many times retry
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

  def perform name, count
    5.times{|n| puts "#{n}. this is #{name} \n"}
  end
end
