def palindrome?(number)
  if number.to_s == number.to_s.reverse then true else false end
end

def largest_palindrome_product

  largest = 0

  a = 999
  b = 999

  until (a == 1) && (b == 1)
    product = a * b
    if palindrome?(product) && product > largest then largest = product end
    if b == 1 then
        b = a
        a -= 1
       else b -= 1
       end
  end

  largest

end

