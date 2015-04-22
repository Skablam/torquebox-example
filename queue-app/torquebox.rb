TorqueBox.configure do

  queue '/queues/testqueue' do
    durable false
    processor QueueConsumer do
        concurrency 1
    end
  end

end
