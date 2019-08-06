def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield(source_array[i]) )
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  result = starting_point
  source_array.length.times do |index|
    result = yield(result, source_array[index])
  end 
  return result
end 

#reduce(source_array) do 
 # |memo, n| 
#  puts " B: Memo = #{memo}, n = #{n}"
#  ret = memo || n
#  puts " A: Memo = #{memo}, n = #{n}" 
#  puts ret
#  return ret
#end

#def reduce_to_all_true(source_array, starting_point = 0)
# result = starting_point
#  source_array.length.times do |index|
#    if !source_array[index]
#      result = false
#      return result
#    end
#  end 
#  return result
#end 

#def reduce_to_any_true(source_array, starting_point = 0)
#  result = starting_point
#  source_array.length.times do |index|
#    if source_array[index]
#      result = true
#      return result
#    end
#  end
#  return result
#end

