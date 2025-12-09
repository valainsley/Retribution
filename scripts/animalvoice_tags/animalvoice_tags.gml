/* 
	If you have the "Automatically remove unused assets when compiling" option enabled in Main
	then you need to tag all the letter files (not just the folder groups) with the a tag
	so gamemaker doesn't remove the sounds from the project, otherwise the game will break trying to
	run an unloadeded sound.
*/

gml_pragma("MarkTagAsUsed", "letters")