class GraphNode
   attr_accessor :value, :neibors

   def initialize(value)
     self.value = value
     self.neighbors = []
   end

   def add_neighbors(othernode)
     self.neighbors << othernode
   end

end

def bfs(s_node, t_n_v)
  queue = [s_node]
  visited = Set.new()

  until queue.empty?
    node =queue.shift
    unless visited.include?(node)
    return node.value if node.value == t_n_v
    visited.add(node)
    queue += node.neighbors
  end
 end
return nil
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
