require 'sinatra'
require 'torquebox'
require 'torquebox-messaging'

class Hello < Sinatra::Base

  get '/hi' do
    "Hello World!"
  end

  get '/sendmessage/:message' do
    queue = TorqueBox.fetch('/queues/testqueue')
    queue.publish("Message: #{params['message']}!")
  end

end
