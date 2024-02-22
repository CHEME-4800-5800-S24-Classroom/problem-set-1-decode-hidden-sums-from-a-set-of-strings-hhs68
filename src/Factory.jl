
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

function _build(modeltype::Type{MyPuzzleRecordModel}, line::String)::MyPuzzleRecordModel 
    
    
    #Type is the blueprint of the object, you have to declare an object 
    model = MyPuzzleRecordModel();

    model.record = text
    model.characters = collect(record) 
    model.len = length(record) 
    
    return model;
end

#fancy way

# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types



# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #