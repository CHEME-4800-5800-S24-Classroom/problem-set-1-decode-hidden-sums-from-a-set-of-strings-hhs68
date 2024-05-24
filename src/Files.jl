
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

Complete the implementation of the puzzleparse method in the Files.jl file. 
The puzzleparse method takes a file path as input and returns a Dictionary with the following structure:
The key should be the line number (starting from index 1), 
and the value should be a MyPuzzleRecordModel instance holding the encoded line of text.
"""
function puzzleparse(filename::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    #"do io" for this open file call it io 
    #r means reading; built in "r" 
    open(filename, "r") do io
        for line ∈ eachline(io)
            # TODO: do something with this line of text; I added these the two lines below
            #process the data lines 
            records[linecounter] = _build(MyPuzzleRecordModel, line)
            #update the counter 
            linecounter +=1 
            
        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #