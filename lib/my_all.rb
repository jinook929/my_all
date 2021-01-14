require 'pry'

def my_all?(collection)
    block_return_value = []
    if block_given?
        i = 0
        while i < collection.length
            block_return_value.push(yield(collection[i]))
            i += 1
        end
    end

    if block_return_value.include?(false)
        false
    else
        true
    end
end

# p my_all?([1,2,3])