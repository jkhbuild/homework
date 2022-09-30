class Stack
    def initialize(stack = [])
        @stack = stack
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
        @stack
    end

    def peek
        @stack.last
    end
end

class Queue
    def initialize(queue = [])
        @queue = queue
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
        @queue
    end

    def peek
        @queue.last
    end
end
current_line = ["john", "ginnel", "justin", "peter", "eric"]
shopping_line = Queue.new(current_line)
p shopping_line
shopping_line.enqueue("kevin")
p shopping_line
p shopping_line.peek
p shopping_line.dequeue
p shopping_line.dequeue

class Map
    def initialize(map = [])
        @map = map
    end

    def set(key, value)
        pair_index = 0
        @map.each_with_index do |pair, i| 
            if pair[0] == key
                pair_index += i
            end
        end
        
        if pair_index != 0
            @map[i].last = value
        else
            @map << [key, value]
        end
    end

    def get(key)
        @map.each { |pair| return value if pair[0] == key }
    end

    def delete(key)
        @map.select { |pair| pair.first != key }
    end

    def show
        @map
    end
end

    