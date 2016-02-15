class HardWorker
  include Sidekiq::Worker
  def perform name, count
    5.times{|n| puts "#{n}. this is #{name} \n"}
  end
end
