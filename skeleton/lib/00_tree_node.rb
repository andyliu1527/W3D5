class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(node)
        if self.parent != nil 
            self.parent.children.delete(self)
        end

        @parent = node

        if @parent != nil
            @parent.children << self
        end
    end

    def add_child(parent)
        parent.parent=(self)
    end

    # def remove_child(parent)
    #     if !self.parent.child.include?(self) && !self.parent == nil
    #         raise "error"
    #     else
    #         parent.parent=(nil)
    #     end
    # end


end