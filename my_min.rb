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

    # output = []
    # i = 0
    # while i < list.length
    #     j = i + 1

    # end

def largest_contiguous_subsum_2(list)
    res = -1.0/0
    acc = 0
    list.each do |i|
        acc += i
        res = [res, acc].max
        if acc < 0
            acc = 0
        end
    end
    res
end





# list = [5, 3, -7]
# puts largest_contiguous_subsum_2(list) # => 8

# possible sub-sums
#[5]           # => 5
#[5, 3]        # => 8 --> we want this one
#[5, 3, -7]    # => 1
#[3]           # => 3
#[3, -7]       # => -4
#[-7]          # => -7

# max = 5
# acc = -1


# list = [2, 3, 0, -6, 7, -6, 7]
# puts largest_contiguous_subsum_2(list) # => 8 (from [7, -6, 7])




# list = [-5, -1, -3]
# puts largest_contiguous_subsum_2(list) # => -1 (from [-1])



def anagram?(s1,s2)
    first = s1.split("")
    first = first.permutation.to_a
    first.map!{|arr|arr.join("")}
    first.include?(s2)
end


# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def anagram_2?(s1,s2)
    s1.each_char do |char|
        (0...s2.length).each do |i|
            if char == s2[i]
                s2[i] = ""
                break
            end
        end
    end
    return s2 == ""
end

# p anagram_2?("gizmo", "sally")    #=> false
# p anagram_2?("elvis", "lives")    #=> true

#(nlogn)
def anagram_3?(s1,s2)
    s1.split("").sort == s2.split("").sort
end

# p anagram_3?("gizmo", "sally")    #=> false
# p anagram_3?("elvis", "lives")    #=> true


def anagram_4?(s1,s2)
    h1 = Hash.new{0}
    (0...s1.length).each do |i|
        h1[s1[i]] += 1
        h1[s2[i]] -= 1

        # h2[s2[i]] += 1
    end
    h1.all?{|k,v| v == 0}
end

#p anagram_4?("gizmo", "sally")    #=> false
#p anagram_4?("elvis", "lives")    #=> true



def two_sum?(arr, target_sum)

    arr.each.with_index do |num, i|
        arr.each.with_index do |num_2, j|

            if  j > i && num + num_2 == target_sum
                return true
            end
        end
    end

    false

end

   
arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false



def two_sum_1?(arr, target_sum)
    arr = arr.sort

    first = 0
    last= arr.length - 1

    while first < last

        if arr[first] + arr[last] == target_sum
            return true
        end

        if arr[first] + arr[last] > target_sum
            last -= 1
        else
            first += 1
        end

    end
    false    

end

arr = [7, 0, 5, 1]
two_sum_1?(arr, 6) # => should be true
two_sum_1?(arr, 10) # => should be false



def two_sum_2?(arr, target_sum)

    output = {}

    arr.each do |ele|
        return output[ele] if output.has_key?(ele)
        output[target_sum - ele] = true

    end

    false

end


arr = [0, 1, 5, 7]

p two_sum_2?(arr, 6) # => should be true
p two_sum_2?(arr, 10) # => should be false



queue = []