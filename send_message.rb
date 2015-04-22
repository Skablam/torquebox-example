require 'torquebox-messaging'

queue = TorqueBox::Messaging::Queue.new('/queues/testqueue',
                                        :host => 'localhost',
                                        :port => 5445)
queue.publish('a lovely message')
