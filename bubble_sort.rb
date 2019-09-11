# frozen_string_literal: true
def bubble_sort(arr)
  loop do
    replace = false
    for i in 0...arr.length - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        replace = true
      end
    end
    break unless replace
  end
  arr
end

def bubble_sort_by(arr)
  loop do
    replace = false
    for i in 0...arr.length - 1
    comparison = yield(arr[i], arr[i + 1])
      if comparison.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        replace = true
      end
    end
    break unless replace
  end
  arr
end
