
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

#Why does this not work? 
"""function _build(modeltype::Type{MyPuzzleRecordModel}, record::String)::MyPuzzleRecordModel 
    #Type is the blueprint of the object, you have to declare an object 
    model = MyPuzzleRecordModel()
    model.record = record
    model.characters = collect(record) 
    model.len = length(record) 
    return model
end
"""
_build(model::Type{MyPuzzleRecordModel}, record::String) = MyPuzzleRecordModel(record);

#fancy way
#_build(model::Type{MyPuzzleRecordModel}, record::String) = MyPuzzleRecordModel(record);
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types



# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #