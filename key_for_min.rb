# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  current_key = []
  current_value = []
  
  if name_hash.empty?
      return nil 
  else
    name_hash.each do |key, value|
      if current_key.empty? && current_value.empty?
        current_key = key 
        current_value = value 
      elsif current_value > value
        current_key = key 
        current_value = value
      end
    end
  end
  current_key
end