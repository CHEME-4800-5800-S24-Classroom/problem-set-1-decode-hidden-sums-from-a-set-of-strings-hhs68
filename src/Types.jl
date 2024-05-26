"""
    MyPuzzleRecordModel

TODO: Add documentation
"""
# TODO: Finish the MyPuzzleRecordModel type
mutable struct MyPuzzleRecordModel
    
    #data 
    record::String
    characters::Array{Char,1}
    len::Int64 

    #constructor 
    #MyPuzzleRecordModel() = new();

    #Another way
    MyPuzzleRecordModel(record::String) = new(record, collect(record), length(record));
    #built in method; positional argument map to the data you listed in order 
    #collect() creates an array of objects 
end