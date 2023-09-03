flatten = operator to manipulate channels

# Channel Properties
- Sends messages asynchronously without delay
- Receives data through a blocking operation which stops the receiving process until the message arrives

## Queue Channel
- non-blocking unidirectional FIFO queye that connects processes, channel factories or operators
- Queue channels are created using a factory method (_channel-of, _channel-path, etc..) or by chaining it with a channel operator or process output declarations

## Value Channel
- bound to a single value and can be read an unlimited amount of times
- created by using the _value_ factory method or using an operator that returns a single value (e.g. _first_, _min_) = can be a output


## Processes 

