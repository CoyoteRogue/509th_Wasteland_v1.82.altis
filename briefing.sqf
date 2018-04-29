// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiaryRecord ["diary",["Changelog",
"
------------------------------ 509th Edit -----------------------------
<br/>
<br/>[Changed] Tweaked mission difficulty levels
<br/>[Added] New missions - Mechanized Patrol, Hostile VTOL, Cargo Patrol, Rogue SF, Hostage Rescue, Roadblock 
<br/>[Added] Purchase Fuel - All gas stations cost to refuel
<br/>[Added] Buy/Save Load Out - Allows player to save current load out for a price
<br/>[Changed] Base doors and keys
<br/>[Changed] Briefing page
<br/>[Added] Headless Client
<br/>[Added] Flies on dead bodies
<br/>[Added] Random weapons box fill
<br/>[Added] Out of Bounds perimeter
<br/>[Added] AFK Timer
<br/>[Changed] Removed player markers and crosshair
<br/>[Changed] Restarts scheduled at noon and midnight Central time
<br/>[Added] New main missions: Jet Formation, Supply Cache, Patrol
<br/>[Added] Safe with keypad to General Store
<br/>[Added] APOC Air Drop System
<br/>[Added] Toxic gas grenades
<br/>[Changed] Audio of suicide bomb to Yosemite Sam
<br/>[Added] Base relocker (It is hackable and destroyable)
<br/>[Added] Custom view distance ability
<br/>[Added] Show R.I.P. map marker after death
<br/>[Added] Money reward for staying on the server
<br/>[Added] Changed the appearance of the store NPCs
<br/>[Added] A DMV to change vehicle ownership
<br/>[Added] Vehicle locking script
<br/>[Added] Locked vehicle hotwire
<br/>[Added] Heal self script
<br/>[Added] Access to DLC Helicopter without DLC
<br/>[Added] New missions: Hostile Jet, Smugglers, Snipers
<br/>[Added] Intro script
<br/>[Added] Resupply truck
<br/>[Added] Mortar to one mission as reward
<br/>[Added] Marksman DLC weapons
<br/>[Changed] Some prices
<br/>[Changed] Vehicles spawn in locked
<br/>[Changed] Spawnbeacon insertion to 0 mtrs
<br/>[Changed] Old R3F script to 3.1
<br/>[Changed] Cleaned up bad language 
<br/>[Changed] Rules, descriptions, etc.
<br/>[Changed] Set parameters
<br/>[Fixed] Hellcats now carry gear
<br/>[Changed] Icons and colors of UI
<br/>[Added] Information Panel
<br/>[Added] Cash Target mode
<br/>[Added] Base door and door lock
<br/>[Added] Lights on/off to Base Locker
<br/>[Added] Camouflage nets now save
<br/>[Fixed] Crates on Hostile Heli
<br/>[Fixed] Damage on Air Drop
<br/>[Fixed] Known issues for 1.56 update
<br/>[Changed] Hostile Heli (single) crates now spawn on touchdown
<br/>[Changed] Lowered Ifrit center of mass to reduce rollovers
<br/>[Changed] Updated antihack database
<br/>[Fixed] Saved grenades not throwable on rejoin
<br/>[Fixed] Corpses not ejecting from vehicle wrecks
<br/>[Fixed] Items not dropping from vehicle wreck corpses
<br/>[Fixed] Revive not triggering properly on fatal shot
<br/>[Fixed] Vehicle turret ammo saving issues
<br/>[Fixed] Veh respawn not being delayed when owner is within 1km
<br/>[Fixed] All armor values showing 0 in general store
<br/>[Fixed] Supplies category in general store sometimes empty
<br/>[Fixed] Server rules not showing anymore in map menu
<br/>[Fixed] Territory info overlapping with vehicle HUD
<br/>[Fixed] Vehicle contents selling money exploit
<br/>[Fixed] Various minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.4c -----------------------------
<br/>
<br/>[Added] Tanks DLC
<br/>[Added] 3rd column in vehicle store for parts
<br/>[Added] AA jet variants
<br/>[Added] HE cannons to gun-only jets
<br/>[Added] Smoke launchers to tank driver and gunner seats
<br/>[Changed] Improved crate and supply truck loot
<br/>[Changed] Some store prices
<br/>[Fixed] Mortar resupply bugs
<br/>[Fixed] Selling of laser designators
<br/>[Fixed] More money exploits
<br/>[Fixed] Other minor changes and fixes
<br/>
<br/>
----------------------------- v1.4b -----------------------------
<br/>
<br/>[Added] Artillery Strike in random mission crates
<br/>[Added] Player body marker
<br/>[Added] Diving gear to purchased RHIB, Speedboat, SDV
<br/>[Added] SDAR turret to SDV gunner
<br/>[Added] Object loading capacity to SDV
<br/>[Added] Tac-Ops DLC Police Van and Gorgon skins
<br/>[Added] Apex DLC laser designator skins
<br/>[Added] Saving of 'Autonomous' option for UAVs
<br/>[Changed] Private storage space 4 times bigger
<br/>[Changed] Allow towing of locked personal vehicles
<br/>[Changed] Allow boat purchase on dry land
<br/>[Changed] Disabled slingloading of locked vehicles
<br/>[Changed] UAVs now sellable
<br/>[Changed] Improved kill attribution
<br/>[Fixed] Resupply error for static weapons
<br/>[Fixed] Ejection of injured units
<br/>[Fixed] Static designator ownership saving
<br/>[Fixed] Saving of stashed uniform contents and weapon items
<br/>[Fixed] Disappearing parked vehicles
<br/>[Fixed] Annoying switch to rocket launcher on revive
<br/>[Fixed] Drowned on dry land
<br/>[Fixed] Camo nets not saving
<br/>[Fixed] Many minor changes and fixes
<br/>
<br/>
----------------------------- v1.4 -----------------------------
<br/>
<br/>[Added] Laws of War DLC
<br/>[Added] Killfeed HUD
<br/>[Changed] Improved revive system
<br/>[Changed] Improved kill attribution
<br/>[Changed] Improved antihack
<br/>[Fixed] Prone reload freeze
<br/>[Fixed] Many minor changes and fixes
<br/>
<br/>
----------------------------- v1.3c -----------------------------
<br/>
<br/>[Added] Jets DLC
<br/>[Added] Aircraft carrier on Stratis
<br/>[Added] Resupply trucks on Altis and Stratis
<br/>[Added] Driver assist
<br/>[Changed] Aircraft prices
<br/>[Changed] Blocked explosives near parking and storage
<br/>[Changed] Migrated saving system from extDB2 to extDB3
<br/>[Fixed] Fast revive exploits
<br/>[Fixed] Could perform your duty after being revived
<br/>[Fixed] Other minor changes and fixes
<br/>
<br/>
----------------------------- v1.3b -----------------------------
<br/>
<br/>[Added] Private parking
<br/>[Added] Private storage
<br/>[Added] Vehicle ownership
<br/>[Added] Vehicle locking
<br/>[Added] Vehicle selling
<br/>[Added] Mine saving
<br/>[Added] Resupply trucks
<br/>[Added] CH View Distance
<br/>[Added] Map legend
<br/>[Added] UAV side persistence
<br/>[Added] headless server cleanup
<br/>[Changed] Static designators now available to indies
<br/>[Changed] Some store prices
<br/>[Fixed] Many other minor changes and fixes
<br/>
<br/>
----------------------------- v1.3 -----------------------------
<br/>
<br/>[Added] Apex version
<br/>[Added] Apex content on dev/preview branches
<br/>[Added] Sticky explosive charges
br/> [Added] Heavy towing and airlifting
<br/>[Added] Load dragged injured friendly in vehicles
<br/>[Added] Eject loaded injured friendly from vehicles
<br/>[Added] Autostabilize when loaded in medical vehicle
<br/>[Added] Improved injured unit detection
<br/>[Added] Scoreboard persistence option for servers
<br/>[Added] Fatal PvP headshots option for servers
<br/>[Added] Custom death messages option for servers
<br/>[ADded] Auto-center heli turret on manual fire
<br/>[Added] UAV side persistence
<br/>[Added] More textures for some vehicles in store
<br/>[Added] Abandoned quadcopter cleanup
<br/>[Added] More admin menu logging
<br/>[Changed] Reduced heli missile damage
<br/>[Changed] Improved mission crate loot
<br/>[Changed] Vest armor values in general store
<br/>[Changed] Increased Mag Repack flexibility
<br/>[Changed] Toggled off autonomous on static designators
<br/>[Changed] Disabled rain due to weather desync
<br/>[Fixed] Engineer with toolkit can now always repair
<br/>[Fixed] Improved missile lock-on
<br/>[Fixed] Improvements to kill tracking system
<br/>[Fixed] Items and money not dropping on injured logout
<br/>[Fixed] Combat log timer not resetting on death
<br/>[Fixed] Player not always ejected on injury
<br/>[Fixed] Double kill/death count
<br/>[Fixed] Spawn cooldowns resetting on rejoin
<br/>[Fixed] Striders spawning without laser batteries
<br/>[Fixed] Disabled rain due to syncing issues
<br/>[Fixed] Various minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.2b -----------------------------
<br/>
<br/>[Added] Scoreboard scrolling via mousewheel
<br/>[Added] New paintjobs for Kajman, Strider, Gorgon, Hatchback
<br/>[Changed] Hostile Heli (single) crates now spawn on touchdown
<br/>[Changed] Lowered Ifrit center of mass to reduce rollovers
<br/>[Changed] Updated antihack database
<br/>[Fixed] Saved grenades not throwable on rejoin
<br/>[Fixed] Corpses not ejecting from vehicle wrecks
<br/>[Fixed] Items not dropping from vehicle wreck corpses
<br/>[Fixed] Revive not triggering properly on fatal shot
<br/>[Fixed] Vehicle turret ammo saving issues
<br/>[Fixed] Too low damage resistance during revive mode
<br/>[Fixed] UGVs not airliftable via R3F
<br/>[Fixed] Revive broken after getting run over by vehicles
<br/>[Fixed] Veh respawn not being delayed when owner is within 1km
<br/>[Fixed] All armor values showing 0 in general store
<br/>[Fixed] Supplies category in general store sometimes empty
<br/>[Fixed] Server rules not showing anymore in map menu
<br/>[Fixed] Territory info overlapping with vehicle HUD
<br/>[Fixed] Vehicle contents selling money exploit
<br/>[Fixed] Antihack kicks not always working properly
<br/>[Fixed] Various minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.2 -----------------------------
<br/>
<br/>[Added] Mag Repack by Outlawled (Ctrl + " + NKEYNAME(19) + ")
<br/>[Added] Adjustable NV by xx-LSD-xx (Shift + PageUp/Down)
<br/>[Added] Town spawn cooldown
<br/>[Added] Ghosting timer
<br/>[Added] Object lock restriction near stores and missions
<br/>[Added] Headless client object saving
<br/>[Added] Time and weather saving
<br/>[Changed] Expanded UAV control restriction to quadcopters
<br/>[Changed] Injured players no longer count as town enemies
<br/>[Changed] Upgraded extDB to extDB2 by Torndeco
<br/>[Changed] Updated antihack
<br/>[Fixed] Old spawn beacons no longer shown on spawn menu
<br/>[Fixed] Multiple money duping exploits
<br/>[Fixed] Vehicles and objects sometimes disappearing from DB
<br/>[Fixed] Severe injuries caused by jumping over small ledges
<br/>[Fixed] Antihack kicks due to RHS, MCC, AGM, ACE3, ALiVE
<br/>[Fixed] Various minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.1b -----------------------------
<br/>
<br/>[Added] Marksmen DLC content
<br/>[Added] Prevent usage of commander camera
<br/>[Added] Emergency eject hotkey (Ctrl + " + AKEYNAME("GetOut") + ")
<br/>[Added] Restricted UAV connection to owner's group
<br/>[Changed] Improved purchased vehicle setup time
<br/>[Changed] Admins can now use global voice chat
<br/>[Changed] Updated antihack
<br/>[Fixed] Corpses not being ejected from vehicles
<br/>[Fixed] Thermal imaging not working for UAVs
<br/>[Fixed] Various minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.1 -----------------------------
<br/>
<br/>[Added] ATMs
<br/>[Added] Union Jack vehicle color
<br/>[Added] Skins hidden in gamefiles for MH-9, Mohawk, and Taru
<br/>[Added] Improved admin spectate camera by micovery
<br/>[Added] Earplugs (End key)
<br/>[Changed] Full rewrite of vehicle respawning system
<br/>[Fixed] Player moved to position too early during save restore
<br/>[Fixed] Mission timeout not extending on AI kill
<br/>[Fixed] Admin teamkill unlocking
<br/>[Fixed] Improved FPS fix
<br/>[Fixed] Running animation parachute glitch
<br/>[Fixed] Various other minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.0c -----------------------------
<br/>
<br/>[Added] MySQL support via extDB extension
<br/>[Added] Town Invasion mission
<br/>[Added] Chain-reaction player kill tracking
<br/>[Added] Force Save action for purchased and captured vehicles
<br/>[Added] Autokick players previously detected by antihack
<br/>[Added] Entity caching script for headless client
<br/>[Added] Tron suits to general store
<br/>[Added] Red lines on map for AIs wandering away from missions
<br/>[Changed] Mission timeout gets extended on AI kill
<br/>[Changed] Transport Heli mission Taru variant to Bench
<br/>[Changed] Spawn beacon item drop to sleeping bag
<br/>[Fixed] More money exploits
<br/>[Fixed] Scoreboard ordering
<br/>[Fixed] Vehicle repair and refuel sometimes not working
<br/>[Fixed] Injured players' corpses being deleted on disconnect
<br/>[Fixed] Static weapon disassembly prevention
<br/>[Fixed] Excess bought rockets ending up in uniform or vest
<br/>[Fixed] Various other minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v1.0b -----------------------------
<br/>
<br/>[Added] Helicopters DLC content
<br/>[Added] Revamped respawn menu
<br/>[Added] 250m altitude limit for territory capture
<br/>[Added] HALO insertion on spawn beacons
<br/>[Added] New vehicle store textures
<br/>[Changed] Increased damage done to planes by 50%
<br/>[Changed] Plane engines shutdown when above 90% damage
<br/>[Changed] Player names can also be toggled with Home key
<br/>[Changed] Increased ATGM UAV price
<br/>[Changed] Increased prices from thermal scopes again
<br/>[Changed] Minor edits to spawn loadouts
<br/>[Fixed] FPS drop that began in v0.9h
<br/>[Fixed] Saved UAVs not being connectable
<br/>[Fixed] Indies unable to get in UGVs
<br/>[Fixed] Blinking fog
<br/>[Fixed] Clipped numbers on scoreboard
<br/>[Fixed] Minor other optimizations and fixes
<br/>
<br/>
----------------------------- v1.0 -----------------------------
<br/>
<br/>[Added] Custom scoreboard
<br/>[Added] Mission and store vehicle saving
<br/>[Added] Player markers on GPS and UAV Terminal
<br/>[Added] Holster actions
<br/>[Changed] Full rewrite of side mission system
<br/>[Changed] Windows key toggles player marker names too
<br/>[Changed] New loading picture by Gameaholic.se
<br/>[Fixed] Weapon sometimes disppearing when moving objects
<br/>[Fixed] More money duping exploits
<br/>[Fixed] Store menu sizes on smaller aspect ratios
<br/>[Fixed] Hunger and thirst reset on rejoin
<br/>[Fixed] Other minor optimizations and fixes
<br/>
<br/>
----------------------------- v0.9h -----------------------------
<br/>
<br/>[Added] Custom revive system based on Farooq's Revive
<br/>[Added] Territory payroll at regular intervals
<br/>[Added] Emergency eject and free parachutes (jump key)
<br/>[Added] Player names toggled with Windows key
<br/>[Added] Increased missile damage against tanks and helis
<br/>[Added] Ability to stash money in weapon crates
<br/>[Added] Ability to sell vehicle inventory at stores
<br/>[Added] More money shipment mission variants
<br/>[Added] Reduced wheel damage from collisions
<br/>[Added] Wreck salvaging
<br/>[Added] Selling bin in stores
<br/>[Added] Karts DLC content in stores
<br/>[Added] Camo sniper rifles in gunstore
<br/>[Added] Repair Offroad in vehicle store
<br/>[Added] Team players on map as server option
<br/>[Added] Unlimited stamina server option
<br/>[Added] Static weapon saving server option
<br/>[Added] More push vehicle actions
<br/>[Added] Paradrop option for airlifted vehicles
<br/>[Added] Preload checkbox on respawn menu
<br/>[Added] Remote explosives store distance restriction
<br/>[Added] Server time multipliers for day and night
<br/>[Added] Addon-less profileNamespace server persistence
<br/>[Added] Linux server compatibility
<br/>[Added] Basic support for headless client
<br/>[Changed] Independent territory capture is now group-based
<br/>[Changed] Towns blocked if more enemies than friendlies
<br/>[Changed] Increased ammo/fuel/repair cargo for resupply trucks
<br/>[Changed] Increased territory capture rewards
<br/>[Changed] Increased money mission rewards
<br/>[Changed] Weapon loot in buildings now disabled by default
<br/>[Changed] Mission crates loot was made more random
<br/>[Changed] Thermal imaging is now available on UAVs
<br/>[Changed] Increased vehicle store prices
<br/>[Changed] Increased prices for thermal optics
<br/>[Changed] Increased player icons up to 2000m
<br/>[Changed] Improved antihack
<br/>[Changed] Improved FPS
<br/>[Fixed] Vehicle store purchase errors due to server lag
<br/>[Fixed] Corpse created when leaving with player saving
<br/>[Fixed] Custom vehicle damage handling not working
<br/>[Fixed] Indie-indie spawn beacon stealing
<br/>[Fixed] Repair kit and jerrycan distance limit
<br/>[Fixed] Spawn beacon packing and stealing restrictions
<br/>[Fixed] Not able to lock static weapons
<br/>[Fixed] Unbreakable store windows
<br/>[Fixed] Stratis airbase gunstore desk glitches
<br/>[Fixed] Missions sometimes completing instantaneously
<br/>[Fixed] Object ammo/fuel/repair cargo not saving
<br/>[Fixed] Respawn menu aspect ratio on some resolutions
<br/>[Fixed] Minor bugs with group system
<br/>[Fixed] Minor bugs with player items
<br/>[Fixed] Various other minor bugfixes and optimizations
<br/>
<br/>
----------------------------- v0.9g -----------------------------
<br/>
<br/>[Added] - Vehicle stores
<br/>[Added] - New lootspawner by Na_Palm, stuff in ALL buildings
<br/>[Added] - New jets and truck added in A3 v1.14
<br/>[Added] - New AAF vehicles added in A3 v1.08
<br/>[Added] - New camos for Mk20 and MX in gunstores
<br/>[Added] - Ability to push plane backwards
<br/>[Added] - Ability to sell quadbike contents like crates
<br/>[Added] - Abort delay during combat when player saving on
<br/>[Changed] - Improved respawn menu
<br/>[Changed] - Respawn now longer to preload destination
<br/>[Changed] - Optimized player icons
<br/>[Changed] - Optimized FPS fix
<br/>[Changed] - Improved server persistence (requires iniDBI v1.4+)
<br/>[Changed] - Improved player saving (server-specific)
<br/>[Changed] - Improved base saving (server-specific)
<br/>[Changed] - Reduced starting gear
<br/>[Changed] - Modified some store prices
<br/>[Changed] - Reduced initial fuel in cars and helis
<br/>[Changed] - Removed Buzzard jet from too short runways
<br/>[Changed] - Removed Kavala castle territory for use as base
<br/>[Changed] - Increased vehicle repair time to 20 sec.
<br/>[Changed] - Increased owner unlocking time to 10 sec.
<br/>[Changed] - Toggling spawn beacon perms is now instant
<br/>[Changed] - Improved Take option for player items
<br/>[Changed] - Added option to cancel towing selection
<br/>[Changed] - Added machine gunner to main mission NPCs
<br/>[Changed] - Added grenadier to side mission NPCs
<br/>[Fixed] - Error messages in various menus
<br/>[Fixed] - Crash when toggling spawn beacon perms
<br/>[Fixed] - Error when hacking warchests
<br/>[Fixed] - Vehicle towing and lifting positions
<br/>[Fixed] - Repair Vehicle option showing for brand new vehicles
<br/>[Fixed] - Vest purchase price
<br/>[Fixed] - Vest and helmet armor value
<br/>[Fixed] - NPC leader now has launcher ammo
<br/>
<br/>
----------------------------- v0.9f -----------------------------
<br/>
<br/>[Added] - Money missions
<br/>[Added] - Sell Crate Items option at stores when moving crate
<br/>[Changed] - Reorganized loots for crates and trucks
<br/>[Fixed] - Broken Warchest menu
<br/>[Fixed] - Spawn beacons not working for Independent groups
<br/>[Fixed] - Player icons position inside buildings
<br/>[Fixed] - MRAPs and quadbikes not spawning
<br/>[Fixed] - Broken money rewards for territories
<br/>
<br/>
----------------------------- v0.9e -----------------------------
<br/>
<br/>[Added] - Territory system
<br/>[Added] - Jumping option (step over while running)
<br/>[Added] - New weapons from v1.04 update
<br/>[Changed] - Water and food now use water bottles and baked beans
<br/>[Fixed] - Store object purchases not operating as intended
<br/>[Fixed] - Objects purchased from stores not saving properly
<br/>[Fixed] - Minor server-side memory leak
<br/>
<br/>
----------------------------- v0.9d -----------------------------
<br/>
<br/>[Added] - Store object purchases
<br/>[Changed] - New UI by KoS
<br/>
<br/>
----------------------------- v0.9c -----------------------------
<br/>
<br/>[Changed] - Instant money pickup and drop
<br/>[Changed] - Increased plane and heli spawning odds
<br/>[Fixed] - FPS fix improvements
<br/>[Fixed] - Vehicles disappearing when untowed or airdropped
<br/>
<br/>
----------------------------- v0.9b -----------------------------
<br/>
<br/>[Initial release] - Welcome to Wasteland!
"
]];

//-------------------------------------------------- Credits

player createDiaryRecord ["Diary", ["Credits","

----------------------------- Credits -----------------------------
<br/>
<br/><font size='16' color='#BBBBBB'>This version modified by:</font>
<br/>	* 509th Coyote Rogue (509th.net)
<br/>
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* Champ-1 (CHVD)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* gtoddc (A3W forums)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Killzone_Kid (KillzoneKid.com)
<br/>	* Krunch (GitHub)
<br/>	* LouDnl (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* Outlawled (Armaholic)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* xx-LSD-xx (Armaholic)
<br/>	* Zenophon (BIS Forums)
<br/>
<br/><font size='16'>Many thanks to everyone involved!</font>
"]];

//-------------------------------------------------- Teamspeak/Websites

player createDiaryRecord ["Diary",["Teamspeak/Website","
<br/>
-------------------------- TeamSpeak ----------------------------
<br/> 
<br/>IP: <font color='#FFC04C'>103.214.111.10</font> - Password: <font color='#FFC04C'>epsilon</font>
<br/>If you're over 18 years old, please join us to get in on the fun!
<br/>
<br/>
----------------------------- Website -----------------------------
<br/>	
<br/>Website: <font color='#FFC04C'>http://509th.net</font>
<br/>Forums: <font color='#FFC04C'>http://www.509th.net/forums/</font>
<br/>
<br/>All are welcome!
<br/>
"]];

//-------------------------------------------------- Mods

player createDiaryRecord ["Diary",["Mods","

------------------ Server Mods (Required by player) -------------------
<br/>
<br/>None at this time.
<br/>
<br/>
------------------------ Client Mods (Allowed) --------------------------
<br/>
<br/>* Community Based Add-On (CBA_A3 - latest version)
<br/>* Dynasound 2.0		
<br/>* Enhanced Soundscape
<br/>* BHC Contour Map
<br/>* ShackTac Mods (STGI, STHUD, STNames)
<br/>	
<br/>Visit our download page at <font color='#FFC04C'>http://509th.net/downloads</font> for more info!
<br/>	
" ]];

//-------------------------------------------------- Rules

player createDiaryRecord ["Diary",["Server Rules","

-------------------------- Rules --------------------------------
<br/>
<br/>This sever exists by and for the benefit of the 509th Tactical group. As a guest, we expect you to adhere to the same standards we do as follows:
<br/>
<br/> 1. Be respectful of ALL players!
<br/> 2. Foul and/or rude language will not be tolerated. If you have a problem with 
<br/>     another player, take it to an Admin.
<br/> 3. GLOBAL CHANNEL IS FOR ADMIN PURPOSES ONLY! Use the other channels in 
<br/>     game or Teamspeak.
<br/> 4. Using or spamming with loud\long custom sound commands will cause 
<br/>     punishment up to a permanent ban.
<br/> 5. Do not exploit any add-ons (hacks) or you will be banned.
<br/> 6. Support your team and its objectives.
<br/> 7. Team killing when you are on BLUFOR or OPFOR is forbidden and punishable. 
<br/>     Play as an Independent if you want to be free for all.
<br/> 8. Revealing information about your (ex)team to other teams is not appreciated.
<br/> 9. Those that intentionally disrupt the server's enjoyment will be removed.
<br/>10. Remember that it is only a game. If you lose your stuff, your base or are killed 
<br/>      in game, you are only a few clicks away from recovery.
<br/>
<br/>If you are unwilling to comply, please kindly enjoy someone else's server.
<br/>
<br/>Anyone banned from our server may appeal to our Ban Committee by posting in the 'Banned' section of our forum. 
<br/>
"]];

//-------------------------------------------------- Briefing
	
player createDiaryRecord ["Diary", ["Briefing","

------------------------------ Objecives ---------------------------------
<br />
<br /><font color='#8fb1e8'>BluFor:</font>
<br />1. Gather weapons and supplies from vehicles and buildings. 
<br />2. Coordinate with other BluFor personnel and establish a base of operations. 
<br />3. Complete tasks.
<br />4. Stop OpFor and Indies. 
<br />5. Get Some!
<br />
<br /><font color='#ef5f37'>OpFor:</font>
<br />1. Gather weapons and supplies from vehicles and buildings. 
<br />2. Coordinate with other BluFor personnel and establish a base of operations. 
<br />3. Complete tasks.
<br />4. Stop BluFor and Indies. 
<br />5. Give Some!
<br />
<br /><font color='#418423'>Indies:</font>
<br />1. Gather weapons and supplies from vehicles and buildings. 
<br />2. Team up with BluFor, OpFor or other Indies. 
<br />3. Complete tasks.
<br />4. Stop anyone not on your team. 
<br />5. Rule the World!
<br/>
<br/>
----------------------------- Tips and Hints -----------------------------
<br/>
<br/>Ask any 509th member to help. We will gladly provide advice, cash/supplies and anything else needed to enjoy your time on our server.
<br/>
<br/>Most 509th members play on the Independent faction. Request an in-game invite via the 'Side' channel to be added to our group. Otherwise, you are fair game!
<br/>
<br/>Install the STGI and STNames mods to be able to spot 'friendly' players. Normal player markers are disabled. The 509th version of STGI and STNames (available on our website) has a greater view distance than the ShackTac version but both work on the server.
<br/>
<br/>Vehicles and items (including base parts) that are NOT locked will be removed at server reset.
<br/>
<br/>Vehicles not used in a 14 day period will be removed.
<br/>
<br/>You must enter the server every 90 days or you will start over from scratch. 
<br/>
<br/>Stay within the large blue circle on the map and below 4500m altitude or you will perish.
<br/>
<br/>Do not go AFK for more than 20 minutes or you will be kicked.
<br/>
<br/>At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>Always be on the lookout for nightvision goggles. They are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the stores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
<br/>
<br/>Keep your cash and other equipment in a well hidden and LOCKED Ammo Crate (buy them at the General Store). Locked Ammo Crates and purchased vehicles will return with you after you leave the game for up to 14 days.
<br/>
<br/>Look in towns for select blue trash barrels that allow you to HALO jump anywhere on the map. 
<br/>
<br/>Report bugs and suggestions on our forums.
<br/>
<br/>Visit our other ArmA and Call of Duty servers!
<br/>
<br/>
---------------------------------- FAQ ----------------------------------
<br/>
<br/>Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best!
<br/>
<br/>Q. What am I supposed to do here?
<br/>A. See the above description
<br/>
<br/>Q. Where can I get a gun?
<br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions; Second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/>
<br/>Q. What are the blue circles on the map?
<br/>A. The circles represent town limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
<br/>
<br/>Q. Why is it so dark, I cant see.
<br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
<br/>
<br/>Q. What's with the water bottles and food cans?
<br/>A. This game has a food and water system that you must adhere to or you will die. You can collect food cans and water bottles from buildings, or from items dropped by dead players. Food and water is also available at the General Stores for purchase.
<br/>
<br/>Q. What is an ATM (Automatic Teller Machine)?
<br/>A. ATMs are access points to your bank account. You may make cash deposits, withdraws and transfers to other players on your team. Don't walk around with too much cash on your person as you may get robbed.
<br/>
<br/>Q. Is it okay for me to shoot my team mates?
<br/>A. If you are member of BLUFOR or OPFOR teams, then you are NOT allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/>
<br/>Q. I saw someone breaking a rule, what do I do?
<br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums at www.509th.net/forums, and make a report if the offense is serious. Visit www.509th.net for more information.
<br/>
<br/>
------------------------------ Hot Keys ------------------------------
<br/>
<br/>List of default player Hot Keys (can be changed in Arma settings):
<br/>
<br/><font color='#FFBA36'>" + NKEYNAME(41) + "</font> key = Open Player Menu
<br/><font color='#FFBA36'>" + NKEYNAME(207) + "</font> key = Toggle Earplugs
<br/><font color='#FFBA36'>" + NKEYNAME(199) + "</font>, <font color='#FFBA36'>" + NKEYNAME(219) + "</font> or <font color='#FFBA36'>" + NKEYNAME(220) + "</font> keys = Toggle Player Names
<br/><font color='#FFBA36'>Ctrl</font> + <font color='#FFBA36'>" + AKEYNAME("GetOut") + "</font> keys = Emergency Eject
<br/><font color='#FFBA36'>" + AKEYNAME("GetOver") + "</font> key = Open Parachute 
<br/><font color='#FFBA36'>Shift</font> + <font color='#FFBA36'>" + NKEYNAME(201) + "</font> / <font color='#FFBA36'>" + NKEYNAME(209) + "</font> keys = Adjust Nightvision
<br/>
  "]];