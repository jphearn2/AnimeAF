///@description startup
attacks = [];
attacks[0] = newAttack("punch", stat.stamina, 5, 10);
attacks[1] = newAttack("kick", stat.stamina, 7, 14);
attacks[2] = newAttack("blast", stat.ki, 5, 20);

items = [];
items[0] = newItem("potion", stat.hp, 10, 2);
items[1] = newItem("senzu", stat.stamina, 25, 2);
items[2] = newItem("magic", stat.ki, 25, 2);

global.player = self;

hp_max = 50;
hp_curr = hp_max;

stm_max = 50;
stm_curr = stm_max;

ki_max = 50;
ki_curr = ki_max;