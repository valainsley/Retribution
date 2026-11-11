function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        UP,
        DOWN,
        LEFT,
        RIGHT,
        START,
        SELECT,
        LP,
        MP,
        HP,
		LK,
		MK,
		HK
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",         [vk_up,    "W"],    [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",       [vk_down,  "S"],    [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",       [vk_left,  "A"],    [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",      [vk_right, "D"],    [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.LP,  "lopunch",      "I",            gp_face3);
        InputDefineVerb(INPUT_VERB.MP,  "medpunch",      "O",        gp_face4);
		InputDefineVerb(INPUT_VERB.HP,  "hipunch",      "P",        gp_shoulderrb);
        InputDefineVerb(INPUT_VERB.LK,  "lokick",      "J",            gp_face1);
        InputDefineVerb(INPUT_VERB.MK, "medkick",     "K",            gp_face2);
		InputDefineVerb(INPUT_VERB.HK, "hikick",     "L",            gp_shoulderr);
        InputDefineVerb(INPUT_VERB.START,   "start",       [vk_enter, vk_escape],           gp_start);
		InputDefineVerb(INPUT_VERB.SELECT,   "select",       [vk_lshift, vk_rshift],           gp_select);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",      undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",    undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",    undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",   undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.LP,  "lopunch",  undefined,   gp_face3); // !!
        InputDefineVerb(INPUT_VERB.MP,  "medpunch",  undefined,   gp_face4); // !!
        InputDefineVerb(INPUT_VERB.HP,  "hipunch",  undefined,   gp_shoulderrb);
        InputDefineVerb(INPUT_VERB.LK, "lokick", undefined,   gp_face2);
        InputDefineVerb(INPUT_VERB.MK,   "medkick",   undefined,   gp_face1);
		InputDefineVerb(INPUT_VERB.HK,   "hikick",   undefined,   gp_shoulderr);
		InputDefineVerb(INPUT_VERB.START,   "start",   undefined,   gp_start);
		InputDefineVerb(INPUT_VERB.SELECT,   "select",   undefined,   gp_select);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
}
