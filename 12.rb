def add_letter(num, letter, value)
  chars = (letter * ((num - (num % value))/value))
  remainder = (num % value)
  return [chars, remainder]
end

def int_to_roman(num)
  out = ""
  x = add_letter(num, 'M', 1000)
  out += x[0]
  x = add_letter(x[1], 'D', 500)
  out += x[0]
  x = add_letter(x[1], 'C', 100)
  out += x[0]
  x = add_letter(x[1], 'L', 50)
  out += x[0]
  x = add_letter(x[1], 'X', 10)
  out += x[0]
  x = add_letter(x[1], 'V', 5)
  out += x[0]
  x = add_letter(x[1], 'I', 1)
  out += x[0]
  out.sub!('DCCCC', 'CM')
  out.sub!('CCCC', 'CD')
  out.sub!('LXXXX', 'XC')
  out.sub!('XXXX', 'XL')
  out.sub!('VIIII', 'IX')
  out.sub!('IIII', 'IV')
  return out
end

(1..20).each do |x|
  puts int_to_roman x
end
puts int_to_roman 5123