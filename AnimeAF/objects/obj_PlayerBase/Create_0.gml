///@description startup
attacks = [];
attacks[0] = newAttack("punch", use_stat.stamina, 5, 10);
attacks[1] = newAttack("kick", use_stat.stamina, 7, 14);
attacks[2] = newAttack("blast", use_stat.ki, 5, 20);

global.player = self;

hp_max = 50;
hp_curr = hp_max;

stm_max = 50;
stm_curr = stm_max;

ki_max = 50;
ki_curr = ki_max;