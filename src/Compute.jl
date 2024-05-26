# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
# _decode_part_1 takes one line of the text and find the first and last number in the text 
# we will later on use this private function and apply to all lines of the text 
#in the public decode_part_1 function 
function _decode_part_1(model::MyPuzzleRecordModel)::Int64
    characters = model.characters;
    #find all the numbers in the string 
    digits = filter(isnumeric, characters)
    value = Array{Char, 1}() #string is made up of char 

    push!(value, digits[1])
    push!(value, digits[end])

    #join the characters in the array into a single string 
    #and turn the characters in the string into an integer using parse(Bool, str)

    return value |> join |> x-> parse(Int64,x);
end 

function _decode_part_2(model::MyPuzzleRecordModel)::Int64
# we need to search for one, two, three, four, five, six, seven, eight, and nine, 
#and replace these with 1, 2, 3, 4, 5, 6, 7, 8, and 9. Then we can parse the value using the _decode_part_1 function
#eightwothree = 823 -> 83 
#where the numerical words are combined with single overlapping characters at the start and end of the word
#we need to add modify the numbers from eight -> eeightt 

    record = model.record;
    number_dictionary = Dict("one" => 1, "two" => 2, 
        "three" => 3, "four" => 4, "five" => 5, 
        "six" => 6, "seven" => 7, "eight" => 8, 
        "nine" => 9, "zero" => 0);

#replace words with numbers 
    for (word, number) in number_dictionary
        if occursin(word, record)
        
            # replace the word with a modified varient -
            first_char = word[1] |> string;
            last_char = word[end] |> string;
            replacement_word = "$(first_char)$(word)$(last_char)";
            record = replace(record, word => replacement_word) |> x -> replace(x, word => number);
        end
    end

# update the model -
    model.record = record;
    model.characters = collect(record);

#use the _decode_part_1 function to parse the value

    return _decode_part_1(model)
end 



# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}
    first element of the tuple is the hidden sum computed by processsing all the encoded text in a file 
    The hidden sum is of the type Int64 

    second element should be a dictionary of type Dict{Int64, Int 64}
    key is the line number (starting from index 1)
    value should be two-digit integer computed from first digit and last digit of each line of text 

models input is the result of puzzle parse in Files.jl
"""

#use the private function _decode_part_1 for each line of the text file 

function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    # TODO: Add the logic for part 1 here
    #the special e; \in tab 
    for (key, value) in models 
        codes[key]=_decode_part_1(value)
        total += codes[key]
    end
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation

"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
     
    for (key, value) in models 
        codes[key]=_decode_part_2(value)
        total += codes[key]
    end
    # return the total -
    return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #