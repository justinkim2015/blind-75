def is_palindrome(s)
    str = s.delete('^A-Za-z0-9').downcase
    return true if str.reverse == str

    false
end

string = 'racecar'
s = "A man, a plan, a canal: Panama"

p is_palindrome(s)
