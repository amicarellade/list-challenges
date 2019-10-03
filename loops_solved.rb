#median
# When we dont have to look at everything at the list, no loops
# list[x] 

def median(list)
    if list.size % 2 == 1
    #odd length lists
        return list[list.size/2] # 3 / 2 = 1
    else
        # even length lists
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end
end
# #            0 1 2
# puts median([1,2,3]) # 2
# #               0 1 2 3    size is 4 => 4 / 2 = 2
# puts median([1,2,3,4]) # 2.5


def starts_with?(list,number)
    if list[0] == number
        return true
    else
        return false
    end
end

# puts starts_with?([1, 2, 3], 1) # true
# puts starts_with?([1, 2, 3], 2) # false

# # 2 - look at everything once to solve the problem

def avg(list)
    total = 0
    list.each do |n| # each is simpler than times loop
        total += n # total = total + n
    end

    return total / list.size.to_f
end

# puts avg([1,2,3]) # 2

def std_dev(list)
    total = 0
    list.each do |n| 
        total += n 
    end

    avg = total / list.size.to_f

    sum_of_squares = 0
    list.each do |n|
        term = (x - avg)*(x - avg)
        sum_of_squares = sum_of_squares + term
    end

    return Math.sgrt(sum_of_squares / (list.size - 1))
end

def list_has?(list, target)

    list.each do |n|
        if n == target
            return true
        end
    end

    return false
end

# puts list_has?([1,2,3], 2) # true
# puts list_has?([1,2,3], 5) # false

# 3 - Have to compare value from a list against everything else in the list

# list is any order - not sorted
def mode(list)

    max_count = 0
    modes = list[0]
    list.each do |n| #looping through OG list number trying to find mode
        
        count = 0
        list.each do |m| # count how many of ns exist in the list
            if n == m 
                count += 1
            end
        end
        
        if count > max_count
            max_count = count
            modes = [n] 
        elsif count == max_count
            if !list.include?(n)
                modes.push(n)
            end
        end

    end

    return modes.sort

end

# print mode([2,7,5,6,5]) # 5


def is_increasing?(list)

    (list.size - 1).times do |i|
        if list[i] < list[i + 1]
            return false
        end
    end

    return true 

end 
# #                    0 1 2
# puts is_increasing?([2,3,4]) # true
# puts is_increasing?([3,2,4]) # false
# puts is_increasing?([3,2,2,4]) # false


# def num_cats(str)

#     # count = 0 
#     (str.size - 2).times do |i|
#         slice = str[i..(i + 2)]
#         # if slice == "cat"
#         #     count += 1
#         end
#     puts slice
#     end

#     # return count
# end

# puts num_cats("catdogcat") #2
# puts num_cats("catdogcatcat") #3
# puts num_cats("dog") #0

# LIST CHALLENGES

def threed(list)
    count = 0
    list.each do |i|
        if i == 3
            count += 1
        end
    end

    (list.size - 1).times do |n|
        if list[n] == 3 && list[n + 1] == 3
            return false
        end
    end
    if count == 3
        return true
    end
end

# puts threed([3, 4, 5, 6, 3, 3]) # false
# puts threed([3, 4, 3, 6, 3]) # true
# puts threed([3, 4, 3, 6, 3, 3]) # false

def same_first_last(list)
    if list[0] == list[list.size - 1]
        return true
    end 
    
    return false

end

# puts same_first_last([1,2,3,4,5]) #false
# puts same_first_last([1,2,3,4,5,1]) #true
# puts same_first_last([1,2,3,4,6]) #false

def get_sandwich(str)
    count = 0 
    x = 0
    y = 0

    (str.size - 4).times do |i|
        if str[i..(i + 4)] == "bread" || str[i..(i-4)] == "bread"
            if count == 0
                x = i + 5
                count += 1
            elsif count > 0
                y = i + 1
            end
        end
    end
    if count < 2
        # return "You need to have two pieces of bread to make a sandwich"
    end
        return str[x..y-2]
end


# puts get_sandwich("breadjambread") # jam
# puts get_sandwich("breadjampeanutsbread") # jampeanuts
# puts get_sandwich("breadjam") # ""
# puts get_sandwich("jambread") # ""

def shift_left(list)
    a = list
    a.push(list[0])
    a.shift
    a
end

# print shift_left([6, 2, 5, 3]) #[2, 5, 3, 6]

def balance(list)
    if list.size % 2 == 1 
        return false
    elsif list.size % 2 == 0
        return true
    end
end

def can_balance(list)
    total = 0
    target_total = 0
    building_target = 0 
    
    list.each do |n|
        total += n
    end
    target_total = total / 2
    list.each do |n|
        building_target += n
        if building_target == target_total
            return true
        end
    end
    if building_target == target_total
        return true
    else 
    return false
    end

end

# puts can_balance([1, 5, 9, 4, 5, 6]) # true
# puts can_balance([1, 5, 9, 5, 4, 5, 6]) # false (no balance)
# puts can_balance([1, 5, 9, 4, 5, 8]) # false (no balance)


def count_code(str)
    count = 0
    (str.size - 2).times do |i|
        slice = str[i..(i + 3)]
        if slice[0] == "c" && slice[1] == "o" && slice[3] == "e"
            count += 1
        end
    end

        return count

end

# puts count_code("ihatetocode") # 1
# puts count_code("icooehatetocode") # 2
# puts count_code("ihatetocope") # 1
# -----
def OG_list1(list)
    if list.size % 2 == 1
        #odd length lists
        return list[list.size/2] 
    else
        # even length lists
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end
end

def OG_list2(list)
    if list.size % 2 == 1
        #odd length lists
        return list[list.size/2] 
    else
            # even length lists
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end
end

def middle_way(list,list2)
    puts OG_list1(list)
    puts OG_list2(list2)
end

# puts middle_way([1,2,3], [4,5,6]) # 2, 5
# -----

def either_2_4(list)
    count = 0
    (list.size).times do |i|
        comparison = list[i..(i + 1)]
        print comparison
    end 
end

puts either_2_4([1, 2, 2, 4]) # true
# puts either_2_4([1, 2, 2, 4, 4]) # false
# puts either_2_4([1, 2, 4, 4]) # true