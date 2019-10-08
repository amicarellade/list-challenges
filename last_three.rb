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

def shift_left2(list)
    list_new = list
    i = 0
    first = list[0]

    list.size.times do |i|
        list_new[i] = list[i + 1]
        i += 1
    end
    list_new[list.size - 1] = first

    return list_new

end

# print shift_left2([6, 2, 5, 3]) # [2, 5, 3, 6]


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
def either_2_4(list)
    puts "code is going"
    index = 0
    count = 0

    list.each do |i|
        if i == 2 && i == list[index +1] || i == 4 && i == list[index +1]
            count += 1 
        end
        index = index + 1
    end
    
    if count == 1
        return true
    end           
        
    return false

end

# puts either_2_4([1, 2, 2, 4, 5]) # true
# puts either_2_4([1, 2, 4]) # false
# puts either_2_4([1, 2, 4, 4]) # true

def max_span(list)
    count = 0
    list.sort
    a = list
    a.shift
    last_item = a.pop
    a
    list.each do |i|
        count = i + 1
        return count
    end
end

# puts max_span([4, 5, 2, 6, 7, 8, 9, 11]) # 6
# puts max_span([4, 2, 5, 6, 7]) # 3

def g_happy(str)
        i = 0
        count = 0
        str.size.times do |letter|
        if str[letter] = "g"
            if str[letter] != str[i+1]
                if str[letter] != str[i-1]
                    return false
                end
            end
        else
            count += 1
        end
        i += 1
    end
        if count == str.size
            return false
        else
            return true
        end    
end  

# puts g_happy("What are you saying") # false
# puts g_happy("I guess this is correct gg") # true


a = [3, 4, 6, 10, 11, 15]
b = [1, 5, 8, 12, 14, 19]
def merge_arrays(a,b)
  result = []
    if a[0] < b[0]
    result << a.shift
    else
    result << b.shift
    end

    if a.length == 0
       return result + b
    elsif b.length == 0
       return result + a
    else
       return result + merge_arrays(a, b)
    end
    
end
puts merge_arrays(a,b)

def is_everywhere(list, number)
    (list.times - 1) do |i|



end

# puts is_everywhere([1, 2, 1, 3], 1) # true
# puts is_everywhere([1, 2, 1, 3], 2) # false
# puts is_everywhere([1, 2, 1, 3, 4], 1) # false