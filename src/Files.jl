
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

TODO: Add documentation
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
            records[linecounter] = _build(MyPuzzleRecordModel, line)
            linecounter =+1 
            
        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #