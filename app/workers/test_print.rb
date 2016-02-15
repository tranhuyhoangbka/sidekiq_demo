class TestPrint
  include Sidekiq::Worker
  sidekiq_options :queue => :critical

  def perform(str)
    puts "output: #{str}"
  end
end
