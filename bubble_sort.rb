def bubble_sort(arr) #[2,3,4,2,4.5]
    loop {
        replace = false
        for i in 0...arr.length-1
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                replace = true
            end
        end
        break if !replace
    }
    arr
end

bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
    loop {
        replace = false
        for i in 0...arr.length-1
            comparison = yield(arr[i], arr[i+1])
            if comparison > 0
                arr[i], arr[i+1] = arr[i+1], arr[i]
                replace = true
            end
        end
        break if !replace
    }
end