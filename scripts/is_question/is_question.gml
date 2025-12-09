

function is_question(_text, _index){
    if(!AV_ALLOW_QUESTIONS) 
        return false;

    var _n = string_length(_text);
    var _look = AV_QUESTION_LOOKAHEAD;
    var _end = min(_n, _index + _look - 1); //clamp to end of string

    // scan ahead, skip light separators, stop on sentence enders
    for(var i = _index; i <= _end; i++){
        var _ch = string_char_at(_text, i);

        //skip light separators, i.e. don’t affect intonation
        if(_ch == " " || _ch == "," || _ch == ":" || _ch == ";" || _ch == "\"" || _ch == "'") 
            continue;
        
        //if we find a question mark first, question cadence
        if(_ch == "?") 
            return true;
        
        //if we hit a sentence ender before a ?, no cadence
        if(_ch == "." || _ch == "!") 
            return false;
    }

    return false;
}