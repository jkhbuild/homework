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

    