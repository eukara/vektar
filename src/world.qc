
void() InitBodyQue;
void() Move_Vektars;
void() Spawn_Vektar;

void() main =
{
	dprint ("main function\n");
	
// these are just commands the the prog compiler to copy these files

	precache_file ("progs.dat");
	precache_file ("gfx.wad");
	precache_file ("quake.rc");
	precache_file ("default.cfg");

	precache_file ("end1.bin");
	precache_file2 ("end2.bin");

	precache_file ("demo1.dem");
	precache_file ("demo2.dem");
	precache_file ("demo3.dem");

//
// these are all of the lumps from the cached.ls files
//
	precache_file ("gfx/palette.lmp");
	precache_file ("gfx/colormap.lmp");

	precache_file2 ("gfx/pop.lmp");

	precache_file ("gfx/complete.lmp");
	precache_file ("gfx/inter.lmp");

	precache_file ("gfx/ranking.lmp");
	precache_file ("gfx/vidmodes.lmp");
	precache_file ("gfx/finale.lmp");
	precache_file ("gfx/conback.lmp");
	precache_file ("gfx/qplaque.lmp");

	precache_file ("gfx/menudot1.lmp");
	precache_file ("gfx/menudot2.lmp");
	precache_file ("gfx/menudot3.lmp");
	precache_file ("gfx/menudot4.lmp");
	precache_file ("gfx/menudot5.lmp");
	precache_file ("gfx/menudot6.lmp");

	precache_file ("gfx/menuplyr.lmp");
	precache_file ("gfx/bigbox.lmp");
	precache_file ("gfx/dim_modm.lmp");
	precache_file ("gfx/dim_drct.lmp");
	precache_file ("gfx/dim_ipx.lmp");
	precache_file ("gfx/dim_tcp.lmp");
	precache_file ("gfx/dim_mult.lmp");
	precache_file ("gfx/mainmenu.lmp");
	
	precache_file ("gfx/box_tl.lmp");
	precache_file ("gfx/box_tm.lmp");
	precache_file ("gfx/box_tr.lmp");
	
	precache_file ("gfx/box_ml.lmp");
	precache_file ("gfx/box_mm.lmp");
	precache_file ("gfx/box_mm2.lmp");
	precache_file ("gfx/box_mr.lmp");
	
	precache_file ("gfx/box_bl.lmp");
	precache_file ("gfx/box_bm.lmp");
	precache_file ("gfx/box_br.lmp");
	
	precache_file ("gfx/sp_menu.lmp");
	precache_file ("gfx/ttl_sgl.lmp");
	precache_file ("gfx/ttl_main.lmp");
	precache_file ("gfx/ttl_cstm.lmp");
	
	precache_file ("gfx/mp_menu.lmp");
	
	precache_file ("gfx/netmen1.lmp");
	precache_file ("gfx/netmen2.lmp");
	precache_file ("gfx/netmen3.lmp");
	precache_file ("gfx/netmen4.lmp");
	precache_file ("gfx/netmen5.lmp");
	
	precache_file ("gfx/sell.lmp");
	
	precache_file ("gfx/help0.lmp");
	precache_file ("gfx/help1.lmp");
	precache_file ("gfx/help2.lmp");
	precache_file ("gfx/help3.lmp");
	precache_file ("gfx/help4.lmp");
	precache_file ("gfx/help5.lmp");

	precache_file ("gfx/pause.lmp");
	precache_file ("gfx/loading.lmp");

	precache_file ("gfx/p_option.lmp");
	precache_file ("gfx/p_load.lmp");
	precache_file ("gfx/p_save.lmp");
	precache_file ("gfx/p_multi.lmp");

// sounds loaded by C code
	precache_sound ("misc/menu1.wav");
	precache_sound ("misc/menu2.wav");
	precache_sound ("misc/menu3.wav");

	precache_sound ("ambience/water1.wav");
	precache_sound ("ambience/wind2.wav");

// shareware
	precache_file ("maps/start.bsp");

	precache_file ("maps/e1m1.bsp");
	precache_file ("maps/e1m2.bsp");
	precache_file ("maps/e1m3.bsp");
	precache_file ("maps/e1m4.bsp");
	precache_file ("maps/e1m5.bsp");
	precache_file ("maps/e1m6.bsp");
	precache_file ("maps/e1m7.bsp");
	precache_file ("maps/e1m8.bsp");

// registered
	precache_file2 ("gfx/pop.lmp");

	precache_file2 ("maps/e2m1.bsp");
	precache_file2 ("maps/e2m2.bsp");
	precache_file2 ("maps/e2m3.bsp");
	precache_file2 ("maps/e2m4.bsp");
	precache_file2 ("maps/e2m5.bsp");
	precache_file2 ("maps/e2m6.bsp");
	precache_file2 ("maps/e2m7.bsp");

	precache_file2 ("maps/e3m1.bsp");
	precache_file2 ("maps/e3m2.bsp");
	precache_file2 ("maps/e3m3.bsp");
	precache_file2 ("maps/e3m4.bsp");
	precache_file2 ("maps/e3m5.bsp");
	precache_file2 ("maps/e3m6.bsp");
	precache_file2 ("maps/e3m7.bsp");

	precache_file2 ("maps/e4m1.bsp");
	precache_file2 ("maps/e4m2.bsp");
	precache_file2 ("maps/e4m3.bsp");
	precache_file2 ("maps/e4m4.bsp");
	precache_file2 ("maps/e4m5.bsp");
	precache_file2 ("maps/e4m6.bsp");
	precache_file2 ("maps/e4m7.bsp");
	precache_file2 ("maps/e4m8.bsp");

	precache_file2 ("maps/end.bsp");

	precache_file2 ("maps/dm1.bsp");
	precache_file2 ("maps/dm2.bsp");
	precache_file2 ("maps/dm3.bsp");
	precache_file2 ("maps/dm4.bsp");
	precache_file2 ("maps/dm5.bsp");
	precache_file2 ("maps/dm6.bsp");
};


entity	lastspawn;

//=======================
/*QUAKED worldspawn (0 0 0) ?
Only used for the world entity.
Set message to the level name.
Set sounds to the cd track to play.

World Types:
0: medieval
1: metal
2: base
*/
//=======================
void() worldspawn =
{
	lastspawn = world;
	InitBodyQue ();

// custom map attributes
	if (self.model == "maps/e1m8.bsp")
		cvar_set ("sv_gravity", "100");
	else
		cvar_set ("sv_gravity", "800");

// the area based ambient sounds MUST be the first precache_sounds

// player precaches	
	W_Precache ();			// get weapon precaches

// sounds used from C physics code
	precache_sound ("demon/dland2.wav");		// landing thud
	precache_sound ("misc/h2ohit1.wav");		// landing splash

// setup precaches allways needed
	precache_sound ("items/itembk2.wav");		// item respawn sound
	precache_sound ("player/plyrjmp8.wav");		// player jump
	precache_sound ("player/land.wav");			// player landing
	precache_sound ("player/land2.wav");		// player hurt landing
	precache_sound ("player/drown1.wav");		// drowning pain
	precache_sound ("player/drown2.wav");		// drowning pain
	precache_sound ("player/gasp1.wav");		// gasping for air
	precache_sound ("player/gasp2.wav");		// taking breath
	precache_sound ("player/h2odeath.wav");		// drowning death

	precache_sound ("misc/talk.wav");			// talk
	precache_sound ("player/teledth1.wav");		// telefrag
	precache_sound ("misc/r_tele1.wav");		// teleport sounds
	precache_sound ("misc/r_tele2.wav");
	precache_sound ("misc/r_tele3.wav");
	precache_sound ("misc/r_tele4.wav");
	precache_sound ("misc/r_tele5.wav");
	precache_sound ("weapons/lock4.wav");		// ammo pick up
	precache_sound ("weapons/pkup.wav");		// weapon up
	precache_sound ("items/armor1.wav");		// armor up
	precache_sound ("weapons/lhit.wav");		//lightning
	precache_sound ("weapons/lstart.wav");		//lightning start
	precache_sound ("items/damage3.wav");

	precache_sound ("misc/power.wav");			//lightning for boss

// player gib sounds
	precache_sound ("player/gib.wav");			// player gib sound
	precache_sound ("player/udeath.wav");		// player gib sound
	precache_sound ("player/tornoff2.wav");		// gib sound

// player pain sounds

	precache_sound ("player/pain1.wav");
	precache_sound ("player/pain2.wav");
	precache_sound ("player/pain3.wav");
	precache_sound ("player/pain4.wav");
	precache_sound ("player/pain5.wav");
	precache_sound ("player/pain6.wav");

// player death sounds
	precache_sound ("player/death1.wav");
	precache_sound ("player/death2.wav");
	precache_sound ("player/death3.wav");
	precache_sound ("player/death4.wav");
	precache_sound ("player/death5.wav");

// ax sounds	
	precache_sound ("weapons/ax1.wav");			// ax swoosh
	precache_sound ("player/axhit1.wav");		// ax hit meat
	precache_sound ("player/axhit2.wav");		// ax hit world

	precache_sound ("player/h2ojump.wav");		// player jumping into water
	precache_sound ("player/slimbrn2.wav");		// player enter slime
	precache_sound ("player/inh2o.wav");		// player enter water
	precache_sound ("player/inlava.wav");		// player enter lava
	precache_sound ("misc/outwater.wav");		// leaving water sound

	precache_sound ("player/lburn1.wav");		// lava burn
	precache_sound ("player/lburn2.wav");		// lava burn

	precache_sound ("misc/water1.wav");			// swimming
	precache_sound ("misc/water2.wav");			// swimming
	
	precache_sound ("vektar/fanfare.wav");	
	
	precache_sound ("vektar/gotit.wav");	
	precache_sound ("vektar/grabit_loop.wav");	
	precache_sound ("vektar/finding_loop.wav");	

	precache_model ("progs/player.mdl");
	precache_model ("progs/eyes.mdl");
	precache_model ("progs/h_player.mdl");
	precache_model ("progs/gib1.mdl");
	precache_model ("progs/gib2.mdl");
	precache_model ("progs/gib3.mdl");

	precache_model ("progs/s_bubble.spr");	// drowning bubbles
	precache_model ("progs/s_explod.spr");	// sprite explosion

	precache_model ("progs/v_axe.mdl");
	precache_model ("progs/v_shot.mdl");
	precache_model ("progs/v_nail.mdl");
	precache_model ("progs/v_rock.mdl");
	precache_model ("progs/v_shot2.mdl");
	precache_model ("progs/v_nail2.mdl");
	precache_model ("progs/v_rock2.mdl");

	precache_model ("progs/bolt.mdl");		// for lightning gun
	precache_model ("progs/bolt2.mdl");		// for lightning gun
	precache_model ("progs/bolt3.mdl");		// for boss shock
	precache_model ("progs/lavaball.mdl");	// for testing
	
	precache_model ("progs/missile.mdl");
	precache_model ("progs/grenade.mdl");
	precache_model ("progs/spike.mdl");
	precache_model ("progs/s_spike.mdl");

	precache_model ("progs/backpack.mdl");

	precache_model ("progs/zom_gib.mdl");

	precache_model ("progs/v_light.mdl");
	precache_model ("progs/quaddama.mdl");
	precache_model ("progs/statue.mdl");
	

//
// Setup light animation tables. 'a' is total darkness, 'z' is maxbright.
//

	// 0 normal
	lightstyle(0, "m");
	
	// 1 FLICKER (first variety)
	lightstyle(1, "mmnmmommommnonmmonqnmmo");
	
	// 2 SLOW STRONG PULSE
	lightstyle(2, "abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba");
	
	// 3 CANDLE (first variety)
	lightstyle(3, "mmmmmaaaaammmmmaaaaaabcdefgabcdefg");
	
	// 4 FAST STROBE
	lightstyle(4, "mamamamamama");
	
	// 5 GENTLE PULSE 1
	lightstyle(5,"jklmnopqrstuvwxyzyxwvutsrqponmlkj");
	
	// 6 FLICKER (second variety)
	lightstyle(6, "nmonqnmomnmomomno");
	
	// 7 CANDLE (second variety)
	lightstyle(7, "mmmaaaabcdefgmmmmaaaammmaamm");
	
	// 8 CANDLE (third variety)
	lightstyle(8, "mmmaaammmaaammmabcdefaaaammmmabcdefmmmaaaa");
	
	// 9 SLOW STROBE (fourth variety)
	lightstyle(9, "aaaaaaaazzzzzzzz");
	
	// 10 FLUORESCENT FLICKER
	lightstyle(10, "mmamammmmammamamaaamammma");

	// 11 SLOW PULSE NOT FADE TO BLACK
	lightstyle(11, "abcdefghijklmnopqrrqponmlkjihgfedcba");
	
	// styles 32-62 are assigned by the light program for switchable lights

	// 63 testing
	lightstyle(63, "a");
	
	Spawn_Vektar();
};
void(string gibname, float dm) ThrowGib;
void(entity pootis) walkmonster_start2;
vector(float dm) VelocityForDamage;

void() VekBall_Touch =
{
if(other.classname == "player")
{
	bprint ("- VEKTAR WAS DESTROYED BY ");
	bprint (other.netname);
	bprint (" -\n");
	other.frags = other.frags + 10;
	sound (self, CHAN_ITEM, "vektar/gotit.wav", 1, ATTN_NORM);
	Spawn_Vektar();
	remove(self);
}
};

void() VekBall_Die =
{
	bprint ("- VEKTAR WAS RETURNED -");
	sound (self, CHAN_ITEM, "vektar/gotit.wav", 1, ATTN_NORM);
	Spawn_Vektar();
	remove(self);
};

void() VekBall_Start =
{
	self.skin = 1;
	self.touch = VekBall_Touch;
	self.think = VekBall_Die;
	self.nextthink = time + 20;
};
void(vector org) Spawn_VekBall =
{
	local entity vektar;
	vektar = spawn();
	vektar.origin = org;
	setmodel (vektar, "progs/quaddama.mdl");
	setsize (vektar, '-16 -16 -24', '16 16 40');
	vektar.velocity = VelocityForDamage (450);
	vektar.velocity_z = vektar.velocity_z * 20;
	vektar.movetype = MOVETYPE_BOUNCE;
	vektar.solid = SOLID_TRIGGER;
	vektar.think = VekBall_Start;
	vektar.nextthink = time + 3;
	sound (vektar, CHAN_ITEM, "vektar/grabit_loop.wav", 1, ATTN_NORM);
};

void() Vektar_Die =
{
	oldvektar_origin = self.origin;
	bprint ("- !VEKTAR WAS OPENED! -");
	Spawn_VekBall(self.origin);
	sound(self, CHAN_VOICE, "vektar/fanfare.wav", 1, ATTN_NONE);
	T_RadiusDamage (self, self.owner, 150, other);
	sound (self, CHAN_WEAPON, "weapons/r_exp3.wav", 1, ATTN_NORM);
	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_EXPLOSION);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);
	remove(self);
};

void() Spawn_Vektar =
{
	local entity vektar;
	vektar = spawn();
	vektar.classname = "info_vektar";
	vektar.origin = '0 0 0';
	vektar.angles = '0 0 0';

	vektar.solid = SOLID_SLIDEBOX;
	vektar.movetype = MOVETYPE_STEP;
	vektar.health = 1000;
	vektar.takedamage = DAMAGE_YES;
	vektar.th_die = Vektar_Die;

	setmodel (vektar, "progs/statue.mdl");

	setsize (vektar, '-16 -16 -24', '16 16 40');
	
	vektar.think = Move_Vektars;
	vektar.nextthink = time + 1;
};

void() Select_VektarPoint =
{
	local float r;
	r = random();
	
	if(world.model == "maps/dm1.bsp")
	{
		if (r < 0.25)
			setorigin (self, '310.085449 1596.904419 -119.968750');
		else if (r<0.50)
			setorigin (self, '-398.394470 1421.210571 24.031250');
		else if (r<0.75)
			setorigin (self, '457.750916 803.538086 24.031250');
		else
			setorigin (self, '-388.645935 1112.265991 72.031250');
	}
	else if(world.model == "maps/dm2.bsp")
	{
		if (r < 0.25)
			setorigin (self, '1691.850220 -1081.032959 20.031250');
		else if (r<0.50)
			setorigin (self, '2834.355469 -33.254959 -71.968750');
		else if (r<0.75)
			setorigin (self, '2479.949707 -1976.228882 120.031250');
		else
			setorigin (self, '2440.553955 -678.985413 56.031250');
	}
	else if(world.model == "maps/dm3.bsp")
	{
		if (r < 0.14)
			setorigin (self, '1056.490723 -678.627197 -23.968750');
		else if (r<0.28)
			setorigin (self, '1133.774048 356.999939 56.031250');
		else if (r<0.42)
			setorigin (self, '1758.477661 631.365784 -295.968750');
		else if (r<0.56)
			setorigin (self, '-529.633301 238.955734 -15.968750');
		else if (r<0.70)
			setorigin (self, '395.883118 -641.624634 -15.968750');
		else if (r<0.84)
			setorigin (self, '791.518433 -16.902779 -199.968765');
		else
			setorigin (self, '1818.831055 201.852631 -391.968750');
	}
	else if(world.model == "maps/dm4.bsp")
	{
		if (r < 0.33)
			setorigin (self, '-194.308289 75.606277 -295.968750');
		else if (r<0.66)
			setorigin (self, '1131.333618 -597.429810 24.031250');
		else
			setorigin (self, '269.502777 -1142.946045 -103.968750');
	}
	else if(world.model == "maps/dm5.bsp")
	{
		if (r < 0.33)
			setorigin (self, '928.396790 387.741455 216.031250');
		else if (r<0.66)
			setorigin (self, '782.576477 -534.393555 152.031250');
		else
			setorigin (self, '311.700653 -286.585205 -111.968750');
	}
	else if(world.model == "maps/dm6.bsp")
	{
		if (r < 0.33)
			setorigin (self, '1878.503418 -179.853561 168.031250');
		else if (r<0.66)
			setorigin (self, '537.787720 -1094.332031 -279.968750');
		else
			setorigin (self, '235.382904 -1509.577637 40.031250');
	}
	else if(world.model == "maps/start.bsp")
	{
		WriteByte (MSG_ALL, SVC_FINALE);
		WriteString (MSG_ALL, "Hey there, sorry to say\n this modification isn't Singleplayer.\nThough you can pretend it is,\n in this room!");
		remove(self);
		return;
	}
	
	if(self.origin == oldvektar_origin)
	{
		Select_VektarPoint();
		return;
	}
	
	sound(self, CHAN_VOICE, "vektar/finding_loop.wav", 1, ATTN_NONE);
};
void() Move_Vektars =
{
	Select_VektarPoint();

};

void() StartFrame =
{
	teamplay = cvar("teamplay");
	skill = cvar("skill");
	framecount = framecount + 1;
};

/*
==============================================================================

BODY QUE

==============================================================================
*/

entity	bodyque_head;

void() bodyque =
{	// just here so spawn functions don't complain after the world
	// creates bodyques
};

void() InitBodyQue =
{
	local entity	e;
	
	bodyque_head = spawn();
	bodyque_head.classname = "bodyque";
	bodyque_head.owner = spawn();
	bodyque_head.owner.classname = "bodyque";
	bodyque_head.owner.owner = spawn();
	bodyque_head.owner.owner.classname = "bodyque";
	bodyque_head.owner.owner.owner = spawn();
	bodyque_head.owner.owner.owner.classname = "bodyque";
	bodyque_head.owner.owner.owner.owner = bodyque_head;
};


// make a body que entry for the given ent so the ent can be
// respawned elsewhere
void(entity ent) CopyToBodyQue =
{
	bodyque_head.angles = ent.angles;
	bodyque_head.model = ent.model;
	bodyque_head.modelindex = ent.modelindex;
	bodyque_head.frame = ent.frame;
	bodyque_head.colormap = ent.colormap;
	bodyque_head.movetype = ent.movetype;
	bodyque_head.velocity = ent.velocity;
	bodyque_head.flags = 0;
	setorigin (bodyque_head, ent.origin);
	setsize (bodyque_head, ent.mins, ent.maxs);
	bodyque_head = bodyque_head.owner;
};


