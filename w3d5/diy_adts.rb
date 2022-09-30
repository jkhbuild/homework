class Stack
    def initialize
        @stack = []
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
    def initialize
        @queue = []
    end

    def enqeue(el)
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

class Map



end

    