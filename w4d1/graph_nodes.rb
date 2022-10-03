class GraphNode
    attr_accessor :neighbors, :val
    def initialize(val)
        @val = val
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        nodes = [self]
        until nodes.empty?
            node = nodes.pop

            return node if node == target_value
            nodes += neighbors
        end
        nil
    end
    
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

bfs(a, "b")
end
