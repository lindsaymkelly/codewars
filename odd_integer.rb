# Given an array, find the int that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  grouped_nums = seq.group_by{ |x| x }.values
  grouped_nums.each do |group|
    if group.length % 2 != 0
      return group 
    end
  end
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])