require 'torquebox-messaging'


class QueueConsumer < TorqueBox::Messaging::MessageProcessor

  def on_message(body)

    File.write('/tmp/consumerinfo', body + "\n", mode: 'a')

  end

end
