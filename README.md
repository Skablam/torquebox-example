# torquebox-example

A sample torquebox setup that includes two applications

- a sinatra application called sinatra-app that can send messages to a queue called 'testqueue'
- a queue consumer application called queue-app that consumers message sent to 'testqueue' and writes the message to file /tmp/consumerinfo

## To get it up and running

```
vagrant up

cd /vagrant

torquebox deploy queue-app

torquebox deploy sinatra-app

torquebox run -p 8888
```

This commands above will deploy both applications and run torquebox on port 8888. So if you hit localhost:8888/hi you should get the response 'hello world!'.

To send a message hit url localhost:8888/sendmessage/yourmessage, and this message should appear in file /tmp/consumerinfo.
