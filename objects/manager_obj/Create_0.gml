deck = ds_list_create();
dealer_hand = ds_list_create();
num_cards = 52;
readyForNext = true;
counter = 0;

hand_x_offset = 100;
dealer_num = 2;

for(var i = 0; i < num_cards; i++){
	readyForNext = false;
	var new_card = instance_create_layer(x,y,"Instances", card_obj);
	new_card.face_index = i % 4;
	new_card.base = (i div 4) * 4;
	
	new_card.face_up = false;
	new_card.in_player_hand = false;
	new_card.depth = 52 - i;
	new_card.x = new_card.x + 10;
	ds_list_add(deck,new_card);
	alarm[0] = 20;
}


enum STATES{
	DEAL,
	PICK,
	COMPARE,
	CLEANUP,
	RESHUFFLE
}

state = STATES.DEAL;