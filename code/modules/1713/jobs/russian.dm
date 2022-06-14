/datum/job/russian
	faction = "Human"

/datum/job/russian/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_russian_name(H.gender)
	H.real_name = H.name

/datum/job/russian/captain
	title = "Kapitan"
	en_meaning = "Army Captain"
	rank_abbreviation = "Kpt."
	is_russojapwar = TRUE
	spawn_location = "JoinLateRUCap"
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/russian/captain/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni, slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/rusoffcoat(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)
	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_r_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Captain of the Russian Forces!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, the highest ranking officer present. Your job is to command the company.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/lieutenant
	title = "Poruchik"
	en_meaning = "Lieutenant"
	rank_abbreviation = "Po."
	is_russojapwar = TRUE

	spawn_location = "JoinLateRUCap"
	whitelisted = TRUE

	is_commander = TRUE
	is_officer = TRUE


	min_positions = 1
	max_positions = 1

/datum/job/russian/lieutenant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/rusoffcoat(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)
	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_r_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_belt)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Lieutenant of the Russian forces!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the troops and their orders. The whole operation relies on you!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)

	return TRUE


/datum/job/russian/second_lieutenant
	title = "Podporuchik"
	en_meaning = "Sub-Lieutenant"
	rank_abbreviation = "Ppo."
	spawn_location = "JoinLateRUCap"
	whitelisted = TRUE
	is_russojapwar = TRUE
	is_commander = TRUE
	is_officer = TRUE


	min_positions = 1
	max_positions = 1

/datum/job/russian/second_lieutenant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/rusoffcoat(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)
	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_r_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_belt)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Lieutenant of the Russian forces!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the troops and their orders. The whole operation relies on you!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)

	return TRUE


/datum/job/russian/sergeant
	title = "Feldvebel"
	en_meaning = "Sergeant"
	rank_abbreviation = "Fv."
	is_russojapwar = TRUE
	spawn_location = "JoinLateRU"
	is_squad_leader = TRUE
	uses_squads = TRUE


	min_positions = 2
	max_positions = 12

/datum/job/russian/sergeant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/rusoffcoat(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)
	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a sergeant leading a squad. Organize your group according to the <b>Captain or Leiutenant's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/doctor
	title = "Medik"
	en_meaning = "Doctor"
	rank_abbreviation = "Dr."
	is_russojapwar = TRUE
	spawn_location = "JoinLateRUDoc"

	is_medic = TRUE
	min_positions = 1
	max_positions = 10

/datum/job/russian/doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform) // for now
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ruscap(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ruscoat(H), slot_wear_suit)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/surgery(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_l_store)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, the most qualified medic present, and you are in charge of keeping the soldiers healthy.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_VERY_HIGH)


	return TRUE

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/job/russian/infantry_first_class
	title = "Yefreytor"
	en_meaning = "Soldier First-class"
	rank_abbreviation = "Ye."
	is_russojapwar = TRUE
	spawn_location = "JoinLateRU" //for testing!
	uses_squads = TRUE


	min_positions = 6
	max_positions = 200

/datum/job/russian/infantry_first_class/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ruscap(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ruscoat(H), slot_wear_suit)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)

	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/russbando = new /obj/item/clothing/accessory/storage/webbing/russband(null)
	uniform.attackby(russbando, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a simple soldier first-class employed by the Imperial Russian Army. Follow your <b>Officer's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE
/datum/job/russian/infantry
	title = "Ryadovoy"
	en_meaning = "Soldier Second-class"
	rank_abbreviation = "Ry."
	is_russojapwar = TRUE
	spawn_location = "JoinLateRU" //for testing!
	uses_squads = TRUE


	min_positions = 6
	max_positions = 200

/datum/job/russian/infantry/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni(H), slot_w_uniform)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ruscap(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ruscoat(H), slot_wear_suit)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)

	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/russbando = new /obj/item/clothing/accessory/storage/webbing/russband(null)
	uniform.attackby(russbando, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	give_random_name(H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a simple soldier second-class employed by the Imperial Russian Army. Follow your <b>Officer's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

//////////////////////////////////////////////WW2/////////////////////////////////////////

/datum/job/russian/captain_soviet
	title = "K.A. Kapitan"
	en_meaning = "Red Army Captain"
	rank_abbreviation = "Kpt."


	spawn_location = "JoinLateRUCap"
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE
	is_ww2 = TRUE
	is_karelina = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/russian/captain_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_officer(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_officercap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/soviet(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/rusoff(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_KARELINA)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/soviet_officer(H), slot_wear_suit)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Captain of the Russian Forces!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, the highest ranking officer present. Your job is to command the company.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE


/datum/job/russian/nkvd_soviet
	title = "NKVD Leytenant"
	en_meaning = "NKVD Officer"
	rank_abbreviation = "NKVD Leyt."


	spawn_location = "JoinLateRUCap"
	is_officer = TRUE
	whitelisted = TRUE
	is_karelina = TRUE
	is_ww2 = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/russian/nkvd_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/soviet(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_nkvd(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/nkvd_cap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/gulagguard/filled(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/soviet(H), slot_r_store)
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_KARELINA)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/soviet_officer(H), slot_wear_suit)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a member of the NKVD attached to this army unit. Your job is to make sure the soldiers follow STAVKA's orders. You can even discipline the officers if need be!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/russian/sergeant_soviet
	title = "K.A. Serjant"
	en_meaning = "Squad Leader"
	rank_abbreviation = "Srj."

	spawn_location = "JoinLateRU"
	is_squad_leader = TRUE
	uses_squads = TRUE
	is_ww2 = TRUE
	is_karelina = TRUE

	min_positions = 2
	max_positions = 12

/datum/job/russian/sergeant_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/soviet(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/rusoff(H), slot_belt)
//head
	if (prob(70))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_fieldcap(H), slot_head)

//weapons
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	if (map.ID == MAP_KHALKHYN_GOL)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_shoulder)
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/mosin(H), slot_r_store)
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/mosin(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/pps(H), slot_shoulder)
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x25_pps(H), slot_r_store)
		H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x25_pps(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction2(H), slot_back)
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_KARELINA)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/tt30(H), slot_l_hand)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a sergeant leading a squad. Organize your squad according to the <b>Kapitan's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/doctor_soviet
	title = "K.A. Voynenvrach"
	en_meaning = "Combat Medic"
	rank_abbreviation = "Srj."

	spawn_location = "JoinLateRUDoc"
	is_karelina = TRUE
	is_ww2 = TRUE
	is_medic = TRUE
	min_positions = 1
	max_positions = 4

/datum/job/russian/doctor_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform) // for now
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet_medic(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/tt30(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_l_store)
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/adv(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/combat(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armband/redcross/armband = new /obj/item/clothing/accessory/armband/redcross(null)
	uniform.attackby(armband, H)
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, the most qualified medic present, and you are in charge of keeping the soldiers healthy.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_VERY_HIGH)
	return TRUE

/datum/job/russian/machinegunner_soviet
	title = "K.A. Pulemetchik"
	en_meaning = "Red Army Machinegunner"
	rank_abbreviation = ""

	spawn_location = "JoinLateRU"
	is_karelina = TRUE
	is_ww2 = TRUE
	uses_squads = TRUE


	min_positions = 2
	max_positions = 12

/datum/job/russian/machinegunner_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)
//head
	if (prob(80))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_ushanka(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_pilotka(H), slot_head)
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_KARELINA)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/largepouches/sovietmg(H), slot_belt)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/dp28(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(50))
			H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a designated automatic rifleman of the Red Army. Keep the enemy pinned down!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)

	return TRUE

/datum/job/russian/sniper_soviet
	title = "K.A. Snaiper"
	en_meaning = "Red Army Sniper"
	rank_abbreviation = ""

	spawn_location = "JoinLateRU"
	is_karelina = TRUE
	is_ww2 = TRUE
	uses_squads = TRUE


	min_positions = 2
	max_positions = 12

/datum/job/russian/sniper_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/soviet(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	if (map.ID == MAP_KARELINA || map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_GULAG13)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_berezka(H), slot_w_uniform)
	else
		if (prob(70))
			H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_amoeba(H), slot_w_uniform)
		else
			H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)
			H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
//head
	if (prob(80))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_pilotka(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_ushanka(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30/sniper(H), slot_shoulder)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(50))
			H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a sniper of the Red Army. Keep the enemy pinned down!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_NORMAL)

	return TRUE

/datum/job/russian/soldier_soviet
	title = "K.A. Soldat"
	en_meaning = "Red Army Private"
	rank_abbreviation = ""

	spawn_location = "JoinLateRU"
	can_be_female = TRUE
	is_ww2 = TRUE
	uses_squads = TRUE
	is_karelina = TRUE

	min_positions = 20
	max_positions = 100

/datum/job/russian/soldier_soviet/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/soviet(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(40))
			H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_pilotka(H), slot_head)
//weapons
	if (map.ID == MAP_STALINGRAD || map.ID == MAP_SMALLSIEGEMOSCOW || map.ID == MAP_KARELINA)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
	if (map.ID == MAP_REICHSTAG)
		if (prob(15))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_belt)
		else
			if (prob(15))
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/semiautomatic/svt(H), slot_shoulder)
			else
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_shoulder)
	else
		if (prob(10))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_shoulder)
		else
			if (prob(10))
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/semiautomatic/svt(H), slot_shoulder)
			else
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_shoulder)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/ww1/leather/webbing = new /obj/item/clothing/accessory/storage/webbing/ww1/leather(null)
	uniform.attackby(webbing, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a simple soldier of the Red Army. Follow your <b>Sergeant's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

////////////////////////////////////////////////////////////////
////////////////////RUSSIAN/CIVIL/WAR///////////////////////////
////////////////////////////////////////////////////////////////


/datum/job/russian/rcw_captain
	title = "Belaya Armiya Kapitan"
	en_meaning = "White Army Captain"
	rank_abbreviation = "Kpt."


	spawn_location = "JoinLateRU"
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE
	is_rcw = TRUE



	min_positions = 1
	max_positions = 2

/datum/job/russian/rcw_captain/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_ww1_officer, slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_l_store)

	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_r_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	world << "<b><big>[H.real_name] is the Captain of the White Forces!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, the highest ranking officer present. Your job is to command the company.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/rcw_sergeant
	title = "Belaya Armiya Feldvebel"
	en_meaning = "White Army Sergeant"
	rank_abbreviation = "Fv."

	spawn_location = "JoinLateRU"
	is_squad_leader = TRUE
	uses_squads = TRUE

	is_rcw = TRUE


	min_positions = 2
	max_positions = 8

/datum/job/russian/rcw_sergeant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_ww1(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/rusoffcap(H), slot_head)
//weapons
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)

	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/chest/holsterh = new /obj/item/clothing/accessory/holster/chest(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a sergeant leading a squad. Organize your group according to the <b>Captain</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/rcw_doctor
	title = "Belaya Armiya Medik"
	en_meaning = "White Army Doctor"
	rank_abbreviation = "Dr."

	spawn_location = "JoinLateRU"

	is_rcw = TRUE
	is_medic = TRUE

	min_positions = 1
	max_positions = 10

/datum/job/russian/rcw_doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_ww1(H), slot_w_uniform) // for now
//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ruscap(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/papakha/white(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/surgery(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches(H), slot_belt)
	var/obj/item/clothing/accessory/armband/redcross/armband = new /obj/item/clothing/accessory/armband/redcross(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(armband, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, the most qualified medic present, and you are in charge of keeping the soldiers healthy.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_VERY_HIGH)


	return TRUE

/datum/job/russian/rcw_infantry
	title = "Belaya Armiya Soldat"
	en_meaning = "White Army Soldier"
	rank_abbreviation = ""

	spawn_location = "JoinLateRU" //for testing!

	is_rcw = TRUE
	uses_squads = TRUE


	min_positions = 6
	max_positions = 100

/datum/job/russian/rcw_infantry/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_ww1(H), slot_w_uniform)
//head
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ruscap(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/papakha/white(H), slot_head)
//jacket
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)

	H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/ww1/soldier(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a simple soldier of the White Army. Follow your <b>Officer's</b> orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE


/datum/job/russian/cossack_leader
	title = "Kazachy Vakhmistr"
	en_meaning = "Cossack Leader"
	rank_abbreviation = "Vakhmistr"

	spawn_location = "JoinLateRU2"

	is_rcw = TRUE
	uses_squads = TRUE
	is_squad_leader = TRUE
	is_officer = TRUE
	whitelisted = TRUE


	min_positions = 1
	max_positions = 3

/datum/job/russian/cossack_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/riding1(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/kuban_cossak(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/papakha/kuban(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/kuban_cossak(H), slot_wear_suit)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/obrez(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/shashka(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/obrez(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/double/holsterh = new /obj/item/clothing/accessory/holster/hip/double(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, leading a squad of cossacks loyal to the White Army. Lead your shock troops and defeat the Reds!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/cossack_soldier
	title = "Kazak"
	en_meaning = "Cossack Soldier"
	rank_abbreviation = "Kazak"

	spawn_location = "JoinLateRU2"

	is_rcw = TRUE
	uses_squads = TRUE

	min_positions = 6
	max_positions = 70

/datum/job/russian/cossack_soldier/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/riding2(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/kuban_cossak(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/papakha/kuban(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/kuban_cossak(H), slot_wear_suit)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/shashka(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a member of a cossack squad loyal to the White Army. Use shock tactics to defeat the Reds!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/civilian/russian
	default_language = "Russian"
/datum/job/civilian/russian/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_russian_name(H.gender)
	H.real_name = H.name


/datum/job/civilian/russian/cheka_comissar
	title = "Chekist"
	en_meaning = "VChEKA Political Comissar"
	rank_abbreviation = "Chekist"

	spawn_location = "JoinLateRU3"

	is_rcw = TRUE
	is_officer = TRUE
	whitelisted = TRUE


	min_positions = 1
	max_positions = 3

/datum/job/civilian/russian/cheka_comissar/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_rcw(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/cheka(H), slot_head)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/cheka(H), slot_wear_suit)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/mauser(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/gulagguard/filled(H), slot_belt)
	give_random_name(H)
	var/obj/item/clothing/accessory/armband/british/armband = new /obj/item/clothing/accessory/armband/british(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(armband, H)
	var/obj/item/clothing/accessory/holster/chest/holster = new /obj/item/clothing/accessory/holster/chest(null)
	uniform.attackby(holster, H)
	H.add_note("Role", "You are a <b>[title]</b>, A member of the feared VChEKA. Since officer ranks were abolished in the Red Army, it is your duty to keep the troops motivated and obedient, and to ensure Commanders follow the Sovnarkom's (Soviet government) orders. Do not hesitate to execute any traitors!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/civilian/russian/red_army_leader
	title = "Krasny Armiya Kommander"
	en_meaning = "Red Army Squad Leader"
	rank_abbreviation = "Kom."

	spawn_location = "JoinLateRU3"

	uses_squads = TRUE
	is_rcw = TRUE
	is_squad_leader = TRUE


	min_positions = 2
	max_positions = 12

/datum/job/civilian/russian/red_army_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new/obj/item/clothing/shoes/leatherboots1(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_rcw(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/russian_rcw(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_fieldcap(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/obrez(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/obrez(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	give_random_name(H)
	var/obj/item/clothing/accessory/armband/british/armband = new /obj/item/clothing/accessory/armband/british(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(armband, H)
	var/obj/item/clothing/accessory/holster/hip/double/holsterh = new /obj/item/clothing/accessory/holster/hip/double(null)
	uniform.attackby(holsterh, H)
	H.add_note("Role", "You are a <b>[title]</b>, leading a squad of red army soldiers. Organize your troops and defeat the Capitalists!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE
/datum/job/civilian/russian/red_army_doctor
	title = "Krasny Armiya Medik"
	en_meaning = "Red Army Doctor"
	rank_abbreviation = "Dr."

	spawn_location = "JoinLateRU3"
	is_rcw = TRUE
	is_medic = TRUE

	min_positions = 1
	max_positions = 10

/datum/job/civilian/russian/red_army_doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_rcw(H), slot_w_uniform) // for now
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/russian_rcw(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_fieldcap(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches(H), slot_belt)
	/obj/item/weapon/storage/belt/leather
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/surgery(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_l_store)
	var/obj/item/clothing/accessory/armband/redcross/armband = new /obj/item/clothing/accessory/armband/redcross(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(armband, H)

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, the most qualified medic present, and you are in charge of keeping the soldiers healthy.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_VERY_HIGH)


	return TRUE
/datum/job/civilian/russian/red_army_soldier
	title = "Krasny Armiya Strelok"
	en_meaning = "Red Army Rifleman"
	rank_abbreviation = ""
	can_be_female = TRUE
	spawn_location = "JoinLateRU3"

	is_rcw = TRUE
	uses_squads = TRUE


	min_positions = 10
	max_positions = 100

/datum/job/civilian/russian/red_army_soldier/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rusuni_rcw(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/russian_rcw(H), slot_wear_suit)
//head
	var/randhead = pick(1,2,3)
	if (randhead == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_fieldcap(H), slot_head)
	else if (randhead == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/budenovka(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/ww/papakha(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack/bint(H), slot_l_store)
	give_random_name(H)
	var/obj/item/clothing/accessory/armband/british/armband = new /obj/item/clothing/accessory/armband/british(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(armband, H)
	if(prob(70))
		H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/soldier(H), slot_belt)
		var/obj/item/clothing/accessory/storage/webbing/russbando = new /obj/item/clothing/accessory/storage/webbing/russband(null)
		uniform.attackby(russbando, H)
		russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
		russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
		russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
		russbando.attackby(new/obj/item/ammo_magazine/mosin, H)
	else
		H.equip_to_slot_or_del(new 	/obj/item/weapon/storage/belt/russian/ww1/soldier(H), slot_belt)
	H.add_note("Role", "You are a <b>[title]</b>, a soldier of the Red Army. Follow your Commander's and local Chekist orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE



/// ww2 tankers///
/datum/job/russian/tank_crew_leader
	title = "Komandir Tanka"
	en_meaning = "Armored Squad Leader"
	rank_abbreviation = "Kom."

	spawn_location = "JoinLateRU"
	is_karelina = TRUE
	is_ww2 = TRUE
	is_reichstag = FALSE
	uses_squads = TRUE
	is_tanker = TRUE
	whitelisted = TRUE
	is_squad_leader = TRUE
	is_officer = TRUE

	min_positions = 2
	max_positions = 6

/datum/job/russian/tank_crew_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_tanker(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/rusoff(H), slot_belt)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_pilotka(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/thick(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/russian(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction2(H), slot_back)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, the commander of a tank. Assemble your crew and lead your tank to victory!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/russian/tank_crew
	title = "Tankist"
	en_meaning = "Armored Crewman"
	rank_abbreviation = ""
	can_be_female = TRUE
	spawn_location = "JoinLateRU"
	is_karelina = TRUE
	is_ww2 = TRUE
	is_reichstag = FALSE
	is_tanker = TRUE
	uses_squads = TRUE

	min_positions = 4
	max_positions = 32

/datum/job/russian/tank_crew/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_tanker(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_tanker(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/tt30(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/thick(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/russian(H), slot_l_store)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/hip = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(hip, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a member of an armored vehicle crew. Get your role assigned and follow your Commander!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE


/datum/job/russian/guards_mechanized_squad_leader
	title = "Gvardii Serjant"
	en_meaning = "Guards Mechanized Squad Leader"
	rank_abbreviation = "Srj."

	spawn_location = "JoinLateRU"
	is_ss_panzer = TRUE
	is_karelina = FALSE
	is_ww2 = TRUE
	is_squad_leader = TRUE
	uses_squads = TRUE

	min_positions = 2
	max_positions = 6

/datum/job/russian/guards_mechanized_squad_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet_officer(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/rusoff(H), slot_belt)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_pilotka(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction2(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars/binoculars(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_r_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/storage/webbing/ww1/leather/webbing = new /obj/item/clothing/accessory/storage/webbing/ww1/leather(null)
	uniform.attackby(webbing, H)
	give_random_name(H)

	H.add_note("Role", "You are a <b>[title]</b>, the leader of a squad of Soviet Guards Mechanized Infantry. Coordinate with the Tanks and defeat the enemy!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)

	return TRUE

/datum/job/russian/guards_mechanized_infantry
	title = "Gvardii Krasnoarmeyets"
	en_meaning = "Guards Mechanized Infantry"
	rank_abbreviation = ""

	spawn_location = "JoinLateRU"
	can_be_female = TRUE
	is_ww2 = TRUE
	uses_squads = TRUE
	is_ss_panzer = TRUE
	is_karelina = FALSE
	min_positions = 6
	max_positions = 30

/datum/job/russian/guards_mechanized_infantry/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(60))
			H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)
//back
	if (prob(30))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/semiautomatic/svt(H), slot_shoulder)
	else
		if (prob(70))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/pps(H), slot_belt)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_shoulder)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/ww1/leather/webbing = new /obj/item/clothing/accessory/storage/webbing/ww1/leather(null)
	uniform.attackby(webbing, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a member of the Soviet Guards Mechanized Infantry. Follow your commander's orders and coordinate with the Tanks!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)

	return TRUE


/datum/job/russian/guards_sapper
	title = "Gvardii Sapyor"
	en_meaning = "Guards Sapper"
	rank_abbreviation = ""

	spawn_location = "JoinLateRUSap"
	is_ss_panzer = TRUE
	is_karelina = TRUE
	is_ww2 = TRUE

	min_positions = 2
	max_positions = 12

/datum/job/russian/guards_sapper/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/ww2/soviet(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/thick/leather(H), slot_gloves)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/pilot(H), slot_eyes)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/ww2/german/sapper/russian(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/sapper(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight/alt(H), slot_wear_id)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/reagent_containers/food/drinks/bottle/canteen, slot_wear_id)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a sapper of the Guards. Place mines, sandbags, barbed wire, and help repair the vehicles!")
	H.setStat("strength", STAT_HIGH)
	H.setStat("crafting", STAT_VERY_HIGH)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)

	return TRUE

/datum/job/russian/mosmil
	title = "Soviet Militia"
	en_meaning = "Armed Militia"
	is_smallsiegemoscow = TRUE
	rank_abbreviation = ""
	spawn_location = "JoinEarlyMilita"
	min_positions = 10
	max_positions = 35

/datum/job/russian/mosmil/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	var/randshoe2 = rand(1,5)
	if (randshoe2 == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
	else if (randshoe2 == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
	else if (randshoe2 == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	else if (randshoe2 == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
	else if (randshoe2 == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/winterboots(H), slot_shoes)


//clothes
	var/randjack2 = rand(1,8)
	if (randjack2 == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/farmer_outfit(H), slot_w_uniform)
	else if (randjack2 == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/mechanic_outfit(H), slot_w_uniform)
	else if (randjack2 == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/civ1(H), slot_w_uniform)
	else if (randjack2 == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/civ4(H), slot_w_uniform)
	else if (randjack2 == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/oldmansuit(H), slot_w_uniform)
	else if (randjack2 == 6)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/engi(H), slot_w_uniform)
	else if (randjack2 == 7)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/civ6(H), slot_w_uniform)
	else if (randjack2 == 8)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/civ5(H), slot_w_uniform)


//head
	var/randhead2 = rand(1,7)
	switch(randhead2)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/sov_ushanka_new(H), slot_head)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/sov_ushanka(H), slot_head)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/fedora(H), slot_head)
		if (5)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/ww2/soviet_tanker(H), slot_head)
		if (6)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww/adriansoviet(H), slot_head)
		if (7)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/soviet(H), slot_head)

//gloves
	var/randglove2 = rand(1,4)
	switch(randglove2)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/gloves/thick/leather(H), slot_gloves)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/gloves/fingerless(H), slot_gloves)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/gloves/thick/leather(H), slot_gloves)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/gloves/motorist(H), slot_gloves)


//misc
	var/randmisc2 = rand(1,6)
	switch(randmisc2)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/glasses/pilot(H), slot_eyes)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/shemagh/greykerchief(H), slot_wear_mask)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/shemagh/redkerchief(H), slot_wear_mask)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/smokable/cigarette(H), slot_wear_mask)
		if (5)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/smokable/cigarette/cigar(H), slot_wear_mask)
		if (6)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/smokable/cigarette(H), slot_wear_mask)

//weapon
	var/randarmw = rand(1,3)
	switch(randarmw)
		if (1)
			if (prob(75))
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_r_hand)
			else
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x38mmR(H), slot_r_hand)

		if (2)
			if (prob(60))
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x25_ppsh(H), slot_r_hand)
			else
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ppsh(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/c762x25_ppsh(H), slot_r_hand)
		if (3)
			if (prob(75))
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/mosin(H), slot_r_hand)
			else
				H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/obrez(H), slot_l_hand)
				H.equip_to_slot_or_del(new /obj/item/ammo_magazine/mosin(H), slot_r_hand)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armor/modern/plate/armor = new /obj/item/clothing/accessory/armor/modern/plate(null)
	uniform.attackby(armor, H)

//suit
	var/randsuits = rand(1,6)
	if (randsuits == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/expensivecoat(H), slot_wear_suit)
	else if (randsuits == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat(H), slot_wear_suit)
	else if (randsuits == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/sovcoat2(H), slot_wear_suit)
	else if (randsuits == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/russian_rcw(H), slot_wear_suit)
	else if (randsuits == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/soviet(H), slot_wear_suit)
	else if (randsuits == 6)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/coat/ww2/soviet(H), slot_wear_suit)

	H.add_note("Role", "You are a <b>[title]</b>, you volunteered to defend Moscow. Good luck, comrade!")

	give_random_name(H)
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	return TRUE