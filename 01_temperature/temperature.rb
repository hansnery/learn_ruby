def ftoc (fahrenheit)
    result = (fahrenheit - 32) / 1.8
    result.ceil
end

def ctof (celsius)
    result = celsius * 1.8 + 32
end