class MinHeap
    def initialize
      @heap = []
    end
  

    def push(value)
      @heap << value
      heapify_up
    end
  

    def pop
      return nil if @heap.empty?
  
      swap(0, @heap.length - 1)
      min_value = @heap.pop
      heapify_down
  
      min_value
    end
  

    def peek
      @heap[0] if @heap.any?
    end
  

    def size
      @heap.length
    end
  

    def to_a
      @heap
    end
  

    private
  
    def heapify_up
      current_index = @heap.length - 1
  
      while has_parent?(current_index) && parent(current_index) > @heap[current_index]
        swap(current_index, parent_index(current_index))
        current_index = parent_index(current_index)
      end
    end
  

    def heapify_down
      current_index = 0
  
      while has_left_child?(current_index)
        smaller_child_index = left_child_index(current_index)
        if has_right_child?(current_index) && right_child(current_index) < left_child(current_index)
          smaller_child_index = right_child_index(current_index)
        end
  
        break if @heap[current_index] < @heap[smaller_child_index]
  
        swap(current_index, smaller_child_index)
        current_index = smaller_child_index
      end
    end
  

    def swap(index1, index2)
      @heap[index1], @heap[index2] = @heap[index2], @heap[index1]
    end
  

    def has_parent?(index)
      index > 0
    end
  

    def parent_index(index)
      (index - 1) / 2
    end
  

    def parent(index)
      @heap[parent_index(index)]
    end
  

    def has_left_child?(index)
      left_child_index(index) < @heap.length
    end
  

    def left_child_index(index)
      2 * index + 1
    end
  

    def left_child(index)
      @heap[left_child_index(index)]
    end
  

    def has_right_child?(index)
      right_child_index(index) < @heap.length
    end
  

    def right_child_index(index)
      2 * index + 2
    end
  

    def right_child(index)
      @heap[right_child_index(index)]
    end
  end
  


  heap = MinHeap.new
  heap.push(4)
  heap.push(10)
  heap.push(8)
  heap.push(5)
  puts heap.to_a.inspect
  puts heap.pop #видалиться 4
  puts heap.to_a.inspect
  