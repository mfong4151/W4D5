#Given a list of integers find the smallest number in the list.


#Phase I
#
#First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
#What is the time complexity for this function?

#O(nlogn)

def my_min(list)

    sorted = list.sort
    sorted[0]
    
end


#Phase II
#
#Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?


def my_min_2(list)
    list.min
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

#p my_min_2(list)  # =>  -5





#Largest Contiguous Sub-sum

#Phase I

def largest_contiguous_subsum(list)

    output = []

    (0...list.length).each do |i|
        (0...list.length).each do |j|
            output << list[i..j] if list[i..j] != []
        end
    end

    res = -1.0/0                #-infinity
    output.each do |i|
        res = [res, i.sum].max
        
    end

    res
end

#Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

#Discuss the time complexity of this solution.
#Phase II

#Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum. To accomplish this efficient space complexity, consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.

def largest_contiguous_subsum_2(list)

    output = []
    i = 0
    while i < list.length
        j = i + 1

    end


end





list = [5, 3, -7]
puts largest_contiguous_subsum_2(list) # => 8

# possible sub-sums
#[5]           # => 5
#[5, 3]        # => 8 --> we want this one
#[5, 3, -7]    # => 1
#[3]           # => 3
#[3, -7]       # => -4
#[-7]          # => -7

max = 5
acc = -1


list = [2, 3, 0, -6, 7, -6, 7]
#puts largest_contiguous_subsum_2(list) # => 8 (from [7, -6, 7])




list = [-5, -1, -3]
#puts largest_contiguous_subsum_2(list) # => -1 (from [-1])