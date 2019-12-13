def add (num1, num2)
    result = num1 + num2
end

def subtract (num1, num2)
    result = num1 - num2
end

def sum (array)
    sum = 0.0
    result = 0.0

    if array.length > 0 then
        array.each do |number|
            sum += number
        end
        result = sum
    end

    return result
end

def multiply (array)

    if array.length > 0 then
        array.inject(:*)
    end

end

def power (number, exponent)
    number ** exponent
end

def factorial (number)
    array = []
    loop_number = number

    while loop_number > 0
        array.push(loop_number)
        loop_number = loop_number - 1
    end

    if number <= 0
        array.push(number)
        result = array.inject(:*)
    else
        result = array.reject(&:zero?).inject(:*)
    end

    return result
end