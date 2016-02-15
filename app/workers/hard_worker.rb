class HardWorker
  include Sidekiq::Worker

  sidekiq_retries_exhausted do |msg|
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

  def perform name, count
    5.times{|n| puts "#{n}. this is #{name} \n"}
  end
end
