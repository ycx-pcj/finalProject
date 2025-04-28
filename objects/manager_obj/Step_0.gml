/*
if(counter < num_cards && readyForNext){
	readyForNext = false;

	var new_card = instance_create_layer(x,y,"Instances", card_obj);
	new_card.face_index = counter % 4;
	new_card.base = (counter div 4) * 4;
	show_debug_message("face: " + string(new_card.face_index));
	show_debug_message("base: " + string(new_card.base));
	show_debug_message("");
	
	new_card.face_up = false;
	new_card.in_player_hand = false;
	new_card.depth = 52 - counter;
	new_card.x = new_card.x + 10;
	ds_list_add(deck,new_card);
	counter++;
	alarm[0] = 20;
}
*/

switch(state){
	case STATES.DEAL:
		var dealt_card = ds_list_find_value(deck, ds_list_size(deck) - 1);
		ds_list_delete(deck, ds_list_size(deck) - 1);
		ds_list_add(dealer_hand, dealt_card);
		
		dealt_card.target_x = room_width / 3 + dealer_num * hand_x_offset;
		dealt_card.target_y = room_height * 0.2;
		
		break;
	case STATES.PICK:
	
		break;
	case STATES.COMPARE:
	
		break;
	case STATES.RESHUFFLE:
	
		break;
}
