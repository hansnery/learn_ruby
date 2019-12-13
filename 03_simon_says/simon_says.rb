def echo (string)
    string
end

def shout (string)
    string.upcase
end

def repeat (string, repeat_times = 2)
    if repeat_times > 2
        (string + " ") * (repeat_times - 1) + string
    else
        string + " " + string
    end
end

def start_of_word(word, character)
    array = word.split("")
    i = 0
    result = []

    while i < character
        result.push(array[i])
        i = i + 1
    end

    return result.join("")
end

def first_word (word)
    array = word.split(" ")
    array.first
end

def titleize (word)
    array = word.split(" ")
    result = []
    if array.length > 1
        i = 0
        while i < array.length do
            if array[i].length > 4 || i == 0 || i == array.length - 1
                result.push(array[i].capitalize)
            else
                result.push(array[i])
            end
            i = i + 1
        end
        result.join(" ")
    else
        word.capitalize
    end
end