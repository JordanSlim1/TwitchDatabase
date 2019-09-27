DROP TABLE streamer CASCADE CONSTRAINTS;
DROP TABLE sponsors CASCADE CONSTRAINTS;
DROP TABLE clips CASCADE CONSTRAINTS;
DROP TABLE channel CASCADE CONSTRAINTS;
DROP TABLE community CASCADE CONSTRAINTS;
DROP TABLE team CASCADE CONSTRAINTS;
DROP TABLE game CASCADE CONSTRAINTS;
DROP TABLE involved CASCADE CONSTRAINTS;
DROP TABLE teamcolor CASCADE CONSTRAINTS;
DROP TABLE stream_video CASCADE CONSTRAINTS;
DROP TABLE topdono CASCADE CONSTRAINTS;

CREATE TABLE streamer(
team_name VARCHAR2(25),
name VARCHAR2(20) CONSTRAINT streamer_name_pk PRIMARY KEY,
cur_viewers NUMBER(6),
tot_viewers NUMBER(9),
com_name VARCHAR2(26),
game_play VARCHAR2(25));

CREATE TABLE sponsors(
sponsor_name VARCHAR2(20) CONSTRAINT sponsor_name_pk PRIMARY KEY,
class VARCHAR2(15),
Pays_to VARCHAR2(25));

CREATE TABLE clips(
clip_name_streamer VARCHAR2(20),
clip_title VARCHAR2(40),
who_clipped VARCHAR2(20),
Date_of_clip DATE,
Time NUMBER(2,2),
Number_viewers NUMBER(6),
CONSTRAINT clips_pk PRIMARY KEY(clip_name_streamer, clip_title, who_clipped));

CREATE TABLE channel(
chan_title VARCHAR2(30) CONSTRAINT channel_chan_title_pk PRIMARY KEY,
chan_viewers NUMBER(6),
page_of VARCHAR2(20),
g_channel VARCHAR2(40));

CREATE TABLE team(
team_title VARCHAR2(25) CONSTRAINT team_team_pk PRIMARY KEY,
team_page VARCHAR2(30));

CREATE TABLE game(
game_name VARCHAR2(40) CONSTRAINT game_game_name_pk PRIMARY KEY,
num_viewers NUMBER(6),
number_followers NUMBER(8),
videos NUMBER(3));

CREATE TABLE community(
com_title VARCHAR2(26) CONSTRAINT community_com_title_pk PRIMARY KEY,
viewers NUMBER(6), 
leader VARCHAR2(15),
num_followers NUMBER(8));

CREATE TABLE involved(
com_name VARCHAR2(26),
clip_name VARCHAR2(40),
CONSTRAINT involved_comname_clipname_pk PRIMARY KEY(com_name,clip_name));

CREATE TABLE teamcolor(
teamname VARCHAR(25),
color CHAR(8),
CONSTRAINT teamcolor_teamname_color_pk PRIMARY KEY(teamname,color));

CREATE TABLE stream_video(
player VARCHAR2(25),
video VARCHAR2(40), 
CONSTRAINT stream_video_player_pk PRIMARY KEY(player, video));

CREATE TABLE topdono(
name_player VARCHAR2(20),
dono NUMBER(5),
CONSTRAINT topdono_name_player_dono_pk PRIMARY KEY(name_player,dono));

INSERT INTO clips
VALUES ('Ninja', 'Ninja still looking for Barstool Smitty', 'sharris26', '29-JUL-2018', 0.12, 82656);

INSERT INTO clips
VALUES ('SypherPK', 'Summer Skirmish Rulers', 'jamomarren', '02-AUG-2018', 0.29, 3648);

INSERT INTO clips
VALUES ('TSM_Myth', 'BETA RES IS BACK', 'abielove', '04-AUG-2018', 0.31, 9635);

INSERT INTO clips
VALUES ('DrLupo', 'Throwing shade at Deej', 'silmera', '31-JUL-2018', 0.25, 6069);

INSERT INTO clips
VALUES ('pokimane', 'Dat Booty THICC', 'bronzila', '29-JUL-2018', 0.59, 26729);

INSERT INTO clips
VALUES ('ONSCREEN', 'Uff', 'bossb0hne', '03-AUG-2018', 0.59, 545);

INSERT INTO clips
VALUES ('DrDisRespectLIVE', 'Dr Disrepect gets rekt', 'kaedcs', '02-AUG-2018', 0.55, 129113);

INSERT INTO clips
VALUES ('CouRageJD', '70k GO JACK', 'tayyyyy', '03-AUG-2018', 0.27, 56336);

INSERT INTO clips
VALUES ('Tfue', 'Tfure using new instant pullout exploit', 'jondeswag', '30-JUL-2018', 0.30, 33049);

INSERT INTO clips
VALUES ('Riot Games2', 'game tips and nice overlay', 'blahz3rz', '29-JUL-2018', 0.17, 37);

INSERT INTO clips
VALUES ('Gosu', '????', 'ladymeowss', '03-AUG-2018', 0.04, 240);

INSERT INTO clips
VALUES ('Broxah', 'Kasing fire', 'kudlaty07', '02-AUG-2018', 0.44, 74499);

INSERT INTO clips
VALUES ('Faker', 'Faker WHAT WAS THAT???????', 'river_flows_in_you', '30-JUL-2018', 0.21, 72285);

INSERT INTO clips
VALUES ('TFBlade', 'XD', 'sxmtxn6in', '01-AUG-2018', 0.30, 59017); 

INSERT INTO clips
VALUES ('Doublelift', 'NA Challanger soloq', 'exp_lol', '30-JUL-2018', 0.59, 32506);

INSERT INTO clips
VALUES ('C9Sneaky', 'The Dankest Timeline?!?', 'xlocked', '30-JUL-2018', 0.34, 27163);

INSERT INTO clips
VALUES ('Osama', 'Auto popping off', 'cruptochess', '01-AUG-2018', 0.46, 23301);

INSERT INTO clips
VALUES ('Froggen', 'Froggen talks about offlineTV', 'magraga', '02-AUG-2018', 0.23, 3715);

INSERT INTO clips
VALUES ('pokelawls', 'DJ Poke game Electronauts', 'yatok_', '31-JUL-2018', 0.59, 104635);

INSERT INTO clips
VALUES ('reynad27', 'Renad sneak dissin', 'asslikejesus', '01-AUG-2018', 0.40, 52869);

INSERT INTO clips
VALUES ('nlKripp', 'Boom Boom Boom', 'greenpulsar', '30-JUL-2018', 0.49, 4040);

INSERT INTO clips
VALUES ('syndereN', 'Synd godlike ench play', 'icp1994', '04-AUG-2018', 0.30, 2768);

INSERT INTO clips
VALUES ('REXZ', 'powerplay', 'ultimatenhd27', '05-AUG-2018', 0.12, 74);

INSERT INTO clips
VALUES ('Gotaga', 'gossaga rage trop vite', 'soulili2005', '30-JUL-2018', 0.35, 1867);

INSERT INTO clips
VALUES ('Trymacs', 'OMG', 'zocker_24', '02-AUG-2018', 0.13, 2326);

INSERT INTO game
VALUES ('League of Legends', 125085, 13358874, 340);

INSERT INTO game
VALUES ('PUBG', 87884, 20154488, 340);

INSERT INTO game
VALUES ('IRL', 82653, 3038427, 340);

INSERT INTO game
VALUES ('Fortnite', 62527, 24916861, 340);

INSERT INTO game
VALUES ('Hearthstone', 39203, 5001449, 340);

INSERT INTO game
VALUES ('Dota 2', 34982, 5735043, 340);

INSERT INTO game
VALUES ('World of Warcraft', 34824, 3091308, 340);

INSERT INTO game
VALUES ('Overwatch', 34014, 11210367, 340);

INSERT INTO game
VALUES ('Minecraft', 32971, 7692496, 340);

INSERT INTO game
VALUES ('No Mans Sky', 31037, 259403, 340);

INSERT INTO game
VALUES ('Counter strike', 28267, 11600517, 340);

INSERT INTO game
VALUES ('Call of Duty: BO4', 25410, 257284, 340);

INSERT INTO game
VALUES ('Maple Story', 21613, 333523, 340);

INSERT INTO game
VALUES ('Dead by Daylight', 20973, 3521514, 340);

INSERT INTO game
VALUES ('Grant Theft Auto V', 19609, 14474934, 340);

INSERT INTO game
VALUES ('StarCraft 2', 18279, 1187182, 340);

INSERT INTO game
VALUES ('Magic The Gathering', 13210, 693233, 340);

INSERT INTO game
VALUES ('Escape From Tarkov', 12613, 735078, 340);

INSERT INTO game
VALUES ('Path of Exile', 125082, 751031, 340);@

INSERT INTO game
VALUES ('Casino', 10500, 274405, 340);

INSERT INTO game
VALUES ('Rainbow Six Siege', 9100, 6827955, 340);

INSERT INTO game
VALUES ('Street Fighter V', 8640, 1026904, 340);

INSERT INTO game
VALUES ('Heroes of the Storm', 7707, 2072369, 340);

INSERT INTO game
VALUES ('Monster Hunter World', 7341, 782707, 340);

INSERT INTO game
VALUES ('Enter the Gungeon', 6150, 99010, 340);

INSERT INTO game
VALUES ('Poker', 5417, 739243, 340);

INSERT INTO game
VALUES ('Destiny 2', 5123, 2509378, 340);

INSERT INTO game
VALUES ('World of Tanks', 5161, 1275364, 340);

INSERT INTO game
VALUES ('ARK', 4894, 2360195, 340);

INSERT INTO game
VALUES ('Warframe', 4207, 1406807, 340);

INSERT INTO community
VALUES ('VarietyStreaming', 60135, 'FennekFox', 19753);

INSERT INTO community
VALUES ('Chill-Streams', 48403, NULL, 13614);

INSERT INTO community
VALUES ('Positivity', 41714, 'FreddyLamChops', 7755);

INSERT INTO community
VALUES ('RUTwitch', 21613, NULL, 2819);

INSERT INTO community
VALUES ('IRL Streamers', 18701, NULL, 1571);

INSERT INTO community
VALUES ('Fortnite Battle Royale', 18580, 'jbug', 4276);

INSERT INTO community
VALUES ('csgo', 17622, 'razlul', 927);

INSERT INTO community
VALUES ('League of Legends', 15532, NULL, 2905);

INSERT INTO community
VALUES ('PUBG', 13900, 'supermadmaxs', 4838);

INSERT INTO community
VALUES ('Fortnite', 13540, NULL, 3753);

INSERT INTO community
VALUES ('VarietyDE', 13295, NULL, 1665);

INSERT INTO community
VALUES ('UK_Streamers', 13148, 'ClamTaco', 4279);

INSERT INTO community
VALUES ('HotDropGG', 1183, NULL, 253);

INSERT INTO community
VALUES ('Interactive', 900, NULL, 189);

INSERT INTO community
VALUES ('Restream.io', 6167, 'nutella4eva', 1057);

INSERT INTO community
VALUES ('Counter-Strike', 9196, 'Rigged', 899);

INSERT INTO community
VALUES ('OfflineTV', 33, NULL, 5996);

INSERT INTO community
VALUES ('FightingGames', 10850, NULL, 2783);

INSERT INTO community
VALUES ('Join The Game', 9463, NULL, 156);

INSERT INTO community
VALUES ('Esports', 759, NULL, 660);

INSERT INTO community
VALUES ('Music', 3971, NULL, 5378);

INSERT INTO community
VALUES ('painting', 2664, NULL, 4263);

INSERT INTO community
VALUES ('CompetitiveOW', 1374, '6475Uncleswagg', 2487);

INSERT INTO community
VALUES ('PLAYERUNKNOWNBATTLEGROUNDS', 18696, NULL, 19753);

INSERT INTO community
VALUES ('drawing', 1692, NULL, 1688);

INSERT INTO community
VALUES ('Speedrunning', 8363, '360chrism', 24492);

INSERT INTO community
VALUES ('RPGs', 5992, 'TheirStar', 2396);

INSERT INTO community
VALUES ('FIFA', 4615, NULL, 142);

INSERT INTO community
VALUES ('StarCraft2', 4738, NULL, 123);

INSERT INTO community
VALUES ('Dead By Daylight', 5035, NULL, 730);

INSERT INTO channel
VALUES ('Finally home!', 75702, 'Ninja','Fortnite' );

INSERT INTO channel
VALUES ('Random Duos', 657, 'SypherPK','IRL' ); 

INSERT INTO channel
VALUES ('Pro Duo Scrims', 12509, 'TSM_Myth','Fortnite' );

INSERT INTO channel
VALUES ('MORE LIKE DAD STINY' , 3621, 'DrLupo','Destiny 2' );

INSERT INTO channel
VALUES ('Streaming Monday', 9878, 'pokimane','Fortnite' );

INSERT INTO channel
VALUES ('Next Stream', 3655, 'ONSCREEN','Fortnite' );

INSERT INTO channel
VALUES ('Ill be gentle', 865, 'DrDisRespectLIVE','PUBG' );

INSERT INTO channel
VALUES ('BEST SND PLAYER ALIVE', 8978, 'CouRageJD','Call of Duty: BO4' );

INSERT INTO channel
VALUES ('Scrims w Cloakzy', 33217, 'Tfue','Fortnite' );

INSERT INTO channel
VALUES ('NA LCS Tonight', 987, 'Riot Games2','League of Legends' );

INSERT INTO channel
VALUES ('Gosu SoloQ', 876, 'Gosu','League of Legends' );

INSERT INTO channel
VALUES ('Sunday stream!', 3435, 'Broxah','League of Legends' );

INSERT INTO channel
VALUES ('SKT T1 Faker', 87678, 'Faker','League of Legends' ); 

INSERT INTO channel
VALUES ('On the 3rd account', 6440, 'TFBlade','League of Legends' );

INSERT INTO channel
VALUES ('Doublelift-going to hit', 8789, 'Doublelift','League of Legends' );

INSERT INTO channel
VALUES ('ROOOOOOOOOOFL', 24324, 'C9Sneaky','League of Legends' );

INSERT INTO channel
VALUES ('ACADEMYPLAYER', 239, 'Osama','League of Legends' );

INSERT INTO channel
VALUES ('You so precious', 565, 'Froggen','League of Legends' );

INSERT INTO channel
VALUES ('slay the spire', 605, 'pokelawls','Call of Duty: BO4' );

INSERT INTO channel
VALUES ('Getting Coached', 6546, 'reynad27','Call of Duty: BO4' );

INSERT INTO channel
VALUES ('TSM Kripp BOOMSDAY', 12787, 'nlKripp','Hearthstone' ); 

INSERT INTO channel
VALUES ('GabeN giveth', 8756, 'syndereN','Dota 2' ); 

INSERT INTO channel
VALUES ('Stadteraid/World PvP', 987, 'REXZ','World of Warcraft' );

INSERT INTO channel
VALUES ('Sur LeStream fr', 555, 'Gotaga','Call of Duty: BO4' );

INSERT INTO channel
VALUES ('Bester Noob der Beta', 654, 'Trymacs','Call of Duty: BO4'); 

INSERT INTO team
VALUES ('TSM','Pro Duo Scrims' );

INSERT INTO team
VALUES ('Luminosity', 'Finally home!');

INSERT INTO team
VALUES ('Rogue','MORE LIKE DAD STINY' );

INSERT INTO team
VALUES ('Poki Squad','Streaming Monday' );

INSERT INTO team
VALUES ('ASUS Republic of Gamers','Next Stream' );

INSERT INTO team
VALUES ('OpTic Gaming','Ill be gentle');

INSERT INTO team
VALUES ('Faze','BEST SND PLAYER ALIVE');

INSERT INTO team
VALUES ('Riot Games','Scrims w Cloakzy' );

INSERT INTO team
VALUES ('Fnatic','NA LCS Tonight' );

INSERT INTO team
VALUES ('SKT T1','Gosu SoloQ' );

INSERT INTO team
VALUES ('New Game Plus','FNC Broxah');

INSERT INTO team
VALUES ('Team Liquid','On the 3rd account' );

INSERT INTO team
VALUES ('Cloud9','ROOOOOOOOOOFL' );

INSERT INTO team
VALUES ('Counter Logic','ACADEMYPLAYER' );

INSERT INTO team
VALUES ('No Team', 'You so precious');

INSERT INTO team
VALUES ('Gankstars','squad wipe' );

INSERT INTO team
VALUES ('Competitive Overwatch','slay the spire');

INSERT INTO team
VALUES ('PUBG Partners','Broadcaster Royale');
 
INSERT INTO team
VALUES ('Tempo Storm','Getting Coached' );

INSERT INTO team
VALUES ('MoonduckTV','GabeN giveth' );

INSERT INTO team
VALUES ('Respawned','Stadteraid/World PvP' );

INSERT INTO team
VALUES ('Team Vitality','Sur LeStream fr' );

INSERT INTO streamer
VALUES ('Luminosity', 'Ninja', 65583, 274765888,'VarietyStreaming','Fortnite' );

INSERT INTO streamer
VALUES ('Luminosity','SypherPK',38464, 17715417,'VarietyStreaming','IRL' );

INSERT INTO streamer
VALUES ('TSM','TSM_Myth',38547,57585848, 'Positivity','Fortnite' );

INSERT INTO streamer
VALUES ('Rogue' , 'DrLupo',4845,31527986,'Fortnite Battle Royale','Destiny 2' );

INSERT INTO streamer
VALUES ('Poki Squad','pokimane',10317,38780393,'OfflineTV','Fortnite' );

INSERT INTO streamer
VALUES ('New Game Plus','ONSCREEN',48574,23834849,'Fortnite Battle Royale','Fortnite' );

INSERT INTO streamer
VALUES ('ASUS Republic of Gamers','DrDisRespectLIVE',7475,2106873,'RUTwitch','PUBG' );

INSERT INTO streamer
VALUES ('OpTic Gaming','CouRageJD',4857,2276729,'Chill-Streams','Call of Duty' );

INSERT INTO streamer
VALUES ('Faze','Tfue',47459,24034439,'Fortnite Battle Royale','Fortnite' );

INSERT INTO streamer
VALUES ('Riot Games','Riot Games2',NULL,10846374,'League of Legends','League of Legends' );

INSERT INTO streamer
VALUES ('TSM','Gosu',NULL,103777152,'csgo','League of Legends' );

INSERT INTO streamer
VALUES ('Fnatic','Broxah',NULL,304856,'Restream.io','League of Legends' );

INSERT INTO streamer
VALUES ('SKT T1','Faker',NULL,25252,'League of Legends','League of Legends' );

INSERT INTO streamer
VALUES ('Team Liquid','TFBlade',3281,5537729,'League of Legends','League of Legends' );

INSERT INTO streamer
VALUES ('Team Liquid','Doublelift',NULL,62506603,'Restream.io','League of Legends' );

INSERT INTO streamer
VALUES ('Cloud9', 'C9Sneaky',NULL,86020883,'Restream.io','League of Legends' );

INSERT INTO streamer
VALUES ('Counter Logic', 'Osama',NULL,86913,'League of Legends','League of Legends' );

INSERT INTO streamer
VALUES ('No Team', 'Froggen',2211,67208491,'League of Legends','League of Legends' );

INSERT INTO streamer
VALUES ('Gankstars', 'Holo',NULL,64,'PLAYERUNKNOWNBATTLEGROUNDS','PUBG' );

INSERT INTO streamer
VALUES ('Competitive Overwatch', 'pokelawls',1325,12188567,'Chill-Streams','Slay the Spire' );

INSERT INTO streamer
VALUES ('PUBG Partners', 'sprEEEzy',NULL,1436869,'PLAYERUNKNOWNBATTLEGROUNDS','PUBG' );

INSERT INTO streamer
VALUES ('Tempo Storm', 'reynad27',NULL,44066623,'Chill-Streams','Shadowverse' );

INSERT INTO streamer
VALUES ('TSM', 'nlKripp',10976,198408270,'VarietyStreaming','Hearthstone' );

INSERT INTO streamer
VALUES ('No Team','syndereN',NULL,7925283,'Positivity','Dota 2' );

INSERT INTO streamer
VALUES ('Respawned', 'REXZ',NULL,52,'Counter-Strike','World of Warcraft' );

INSERT INTO streamer
VALUES ('Team Vitality', 'Gotaga', 2617,38904783,'OfflineTV','Call of Duty' );

INSERT INTO streamer
VALUES ('No Team', 'Trymacs', NULL, 2345,'Join The Game', 'Call of Duty' );

INSERT INTO sponsors
VALUES('Logitech', 'Technology', 'TSM');

INSERT INTO sponsors
VALUES('HTC', 'Technology', 'TSM');

INSERT INTO sponsors
VALUES('DrPepper', 'Food', 'TSM');

INSERT INTO sponsors
VALUES('HyperX', 'Technology', 'Luminosity');

INSERT INTO sponsors
VALUES('ggbet', 'Sport', 'Luminosity');

INSERT INTO sponsors
VALUES('Scufgaming', 'Technology', 'Luminosity');

INSERT INTO sponsors
VALUES('DxrAcer', 'Technology', 'Luminosity');

INSERT INTO sponsors
VALUES('Zowie', 'Technology', 'Luminosity');

INSERT INTO sponsors
VALUES('Space Jam', 'Technology', 'Luminosity');

INSERT INTO sponsors
VALUES('Discord', 'Technology', 'Rogue');

INSERT INTO sponsors
VALUES('None', NULL, 'Poki Squad');

INSERT INTO sponsors
VALUES('ASUS', 'Technology', 'ASUS Republic of Gamers');

INSERT INTO sponsors
VALUES('Sunglasses', 'Clothes', 'OpTic Gaming');

INSERT INTO sponsors
VALUES('Nothing', NULL, 'Faze');

INSERT INTO sponsors
VALUES('Computers', 'Technology', 'Riot Games');

INSERT INTO sponsors
VALUES('Monster', 'Food', 'Fnatic');

INSERT INTO sponsors
VALUES('Deezer', 'Technology', 'Fnatic');

INSERT INTO sponsors
VALUES('AMD', 'Technology', 'Fnatic');

INSERT INTO sponsors
VALUES('OnePlus', 'Technology', 'Fnatic');

INSERT INTO sponsors
VALUES('MSi', 'Technology', 'Fnatic');

INSERT INTO sponsors
VALUES('Grubhub', 'Food', 'SKT T1');

INSERT INTO sponsors
VALUES('Drink', 'Food', 'Fnatic');

INSERT INTO sponsors
VALUES('Not Applicable', NULL,'New Game Plus');

INSERT INTO sponsors
VALUES('Alienware', 'Technology','Team Liquid');

INSERT INTO sponsors
VALUES('Ballistix', 'Outdoors','Team Liquid');

INSERT INTO sponsors
VALUES('Twitch', 'Website','Team Liquid');

INSERT INTO sponsors
VALUES('NeedForSeat', 'Furniture','Team Liquid');

INSERT INTO sponsors
VALUES('Red Bull', 'Technology','Cloud9');

INSERT INTO sponsors
VALUES('MVMT', 'Clothes','Counter Logic');

INSERT INTO sponsors
VALUES('Corsair', 'Technology','Counter Logic');

INSERT INTO sponsors
VALUES('ULT', 'Clothes','Gankstars');

INSERT INTO sponsors
VALUES('0', NULL,'Competitive Overwatch');

INSERT INTO sponsors
VALUES('Zip', NULL,'PUBG Partners');

INSERT INTO sponsors
VALUES('Sky Tech', 'Technology','Tempo Storm');

INSERT INTO sponsors
VALUES('Lab', 'Furniture','Tempo Storm');

INSERT INTO sponsors
VALUES('MoonduckTV', 'Clothes','MoonduckTV');

INSERT INTO sponsors
VALUES('Headphones', 'Technology','Respawned');

INSERT INTO sponsors
VALUES('Hats', 'Clothes','Team Vitality');

INSERT INTO involved
VALUES('VarietyStreaming','Ninja');

INSERT INTO involved
VALUES('Chill-Streams','SypherPK');

INSERT INTO involved
VALUES('Positivity','TSM_Myth');

INSERT INTO involved
VALUES('RUTwitch' ,'DrLupo');

INSERT INTO involved
VALUES('IRL Streamers','pokimane');

INSERT INTO involved
VALUES('Fortnite Battle Royale','ONSCREEN');

INSERT INTO involved
VALUES('csgo','DrDisRespectLIVE');

INSERT INTO involved
VALUES('League of Legends','CouRageJD');

INSERT INTO involved
VALUES('PUBG','Tfue');

INSERT INTO involved
VALUES('Fortnite','Riot Games2');

INSERT INTO involved
VALUES('VarietyDE','Gosu');

INSERT INTO involved
VALUES('UK_Streamers','Broxah');

INSERT INTO involved
VALUES('HotDropGG','Faker');

INSERT INTO involved
VALUES('Restream.io','TFBlade');

INSERT INTO involved
VALUES('Counter-Strike','Doublelift');

INSERT INTO involved
VALUES('OfflineTV','C9Sneaky');

INSERT INTO involved
VALUES('FightingGames','Osama');

INSERT INTO involved
VALUES('Join The Game','Froggen');

INSERT INTO involved
VALUES('Esports','Holo');

INSERT INTO involved
VALUES('Music','pokelawls');

INSERT INTO involved
VALUES('painting','sprEEEzy');

INSERT INTO involved
VALUES('CompetitiveOW','reynad27');

INSERT INTO involved
VALUES('PLAYERUNKNOWNBATTLEGROUNDS','nlKripp');

INSERT INTO involved
VALUES('drawing','syndereN');

INSERT INTO involved
VALUES('Speedrunning','REXZ');

INSERT INTO involved
VALUES('RPGs','Gotaga');

INSERT INTO involved
VALUES('FIFA','Trymacs');

INSERT INTO involved
VALUES('StarCraft2', 'Trymacs');

INSERT INTO involved
VALUES('Dead By Daylight', 'Gotaga');

INSERT INTO involved
VALUES('Interactive', 'REXZ');

INSERT INTO teamcolor
VALUES('TSM', 'Black');

INSERT INTO teamcolor
VALUES('Luminosity', 'Blue');

INSERT INTO teamcolor
VALUES('Rogue', 'Purple');

INSERT INTO teamcolor
VALUES('Poki Squad', 'Pink');

INSERT INTO teamcolor
VALUES('ASUS Republic of Gamers', 'Red');

INSERT INTO teamcolor
VALUES('OpTic Gaming', 'Blue');

INSERT INTO teamcolor
VALUES('Faze', 'Red');

INSERT INTO teamcolor
VALUES('Riot Games', 'Red');

INSERT INTO teamcolor
VALUES('Fnatic', 'Blue');

INSERT INTO teamcolor
VALUES('SKT T1', 'Blue');

INSERT INTO teamcolor
VALUES('New Game Plus', 'None');

INSERT INTO teamcolor
VALUES('Team Liquid', 'Blue');

INSERT INTO teamcolor
VALUES('Cloud9', 'Blue');

INSERT INTO teamcolor
VALUES('Counter Logic', 'Blue');

INSERT INTO teamcolor
VALUES('No Team', 'None');

INSERT INTO teamcolor
VALUES('Gankstars', 'Yellow');

INSERT INTO teamcolor
VALUES('Competitive Overwatch', 'Yellow');

INSERT INTO teamcolor
VALUES('PUBG Partners', 'Yellow');

INSERT INTO teamcolor
VALUES('Tempo Storm', 'Black');

INSERT INTO teamcolor
VALUES('MoonduckTV', 'Green');

INSERT INTO teamcolor
VALUES('Respawned', 'Orange');

INSERT INTO teamcolor
VALUES('Team Vitality', 'Black');

INSERT INTO topdono
VALUES('TFBlade', 700);

INSERT INTO topdono
VALUES('Doublelift', 350);

INSERT INTO topdono
VALUES('C9Sneaky', 800);

INSERT INTO topdono
VALUES('Osama', 900);

INSERT INTO topdono
VALUES('Froggen', 850);

INSERT INTO topdono
VALUES('pokelawls', 150);

INSERT INTO topdono
VALUES('reynad27', 250);

INSERT INTO topdono
VALUES('nlKripp', 350);

INSERT INTO topdono
VALUES('syndereN', 450);

INSERT INTO topdono
VALUES('REXZ', 350);

INSERT INTO topdono
VALUES('Gotaga', 380);

INSERT INTO topdono
VALUES('Trymacs', 440);

INSERT INTO topdono
VALUES('Ninja', 9000);

INSERT INTO topdono
VALUES('SypherPK', 6000);

INSERT INTO topdono
VALUES('TSM_Myth', 8000);

INSERT INTO topdono
VALUES('DrLupo', 8000);

INSERT INTO topdono
VALUES('pokimane', 780);

INSERT INTO topdono
VALUES('ONSCREEN', 7800);

INSERT INTO topdono
VALUES('DrDisRespectLIVE', 7700);

INSERT INTO topdono
VALUES('CouRageJD', 7550);

INSERT INTO topdono
VALUES('Tfue', 575);

INSERT INTO topdono
VALUES('Riot Games2', 4550);

INSERT INTO topdono
VALUES('Gosu', 708);

INSERT INTO topdono
VALUES('Broxah', 70);

INSERT INTO topdono
VALUES('Faker', 900);

INSERT INTO stream_video
VALUES ('Ninja','Ninja After Dark');

INSERT INTO stream_video
VALUES ('SypherPK','Highlight: Funny Reaction ,Duo Fill');

INSERT INTO stream_video
VALUES ('TSM_Myth', 'summer skirmish practice');

INSERT INTO stream_video
VALUES ('DrLupo','500k SOLO SUMMER SKIRMISH');

INSERT INTO stream_video
VALUES ('pokimane','Pokibae reporting for duty');

INSERT INTO stream_video
VALUES ('ONSCREEN','Removed Onscreen Oddshots');

INSERT INTO stream_video
VALUES ('DrDisRespectLIVE','Best Sniper Tactics');

INSERT INTO stream_video
VALUES ('CouRageJD', 'THE BEST SND PLAYER ALIVE!');

INSERT INTO stream_video
VALUES ('Holo','The Full-Auto MK14 is INSANE');

INSERT INTO stream_video
VALUES ('Tfue', 'Pro Duo Scrims W/ Ninja' );

INSERT INTO stream_video
VALUES ( 'sprEEEzy','Duo Practice with WackyJacky101');

INSERT INTO stream_video
VALUES ('Riot Games2', 'NA Academy Summer Split 2018');

INSERT INTO stream_video
VALUES ('Gosu', 'GosuTV_OW');

INSERT INTO stream_video
VALUES ('Broxah','FNC Broxah');

INSERT INTO stream_video
VALUES ('Faker','SKT TI Faker');

INSERT INTO stream_video
VALUES ('TFBlade','Rank 1,98 and X');

INSERT INTO stream_video
VALUES ('Doublelift','Doublelift_duo bjerg');

INSERT INTO stream_video
VALUES ( 'C9Sneaky','ROOOOOOOOOOFL');

INSERT INTO stream_video
VALUES ( 'Osama','CLG Auto' );

INSERT INTO stream_video
VALUES ( 'Froggen', '1V1 me');

INSERT INTO stream_video
VALUES ( 'pokelawls','300k pubg tournament today');

INSERT INTO stream_video
VALUES ( 'reynad27', 'Boom');

INSERT INTO stream_video
VALUES ( 'nlKripp', 'Highlight: TSM Kripp PRE-LAUNCH TMRW !!!');

INSERT INTO stream_video
VALUES ('syndereN', 'GabeN giveth, GabeN taketh away');

INSERT INTO stream_video
VALUES ('REXZ','Hulu 13 Uhr HC Viewerraid!');

INSERT INTO stream_video
VALUES ( 'Gotaga','Top 1 Solo-15 Kills');

INSERT INTO stream_video
VALUES ( 'Trymacs','Bester Noob der Beta!');

ALTER TABLE sponsors
ADD CONSTRAINT sponsor_Pays_to_fk FOREIGN KEY(Pays_to) REFERENCES team(team_title);

ALTER TABLE streamer
ADD CONSTRAINT streamer_com_name_fk FOREIGN KEY(com_name) REFERENCES community(com_title);

ALTER TABLE channel 
ADD CONSTRAINT channel_page_of_fk FOREIGN KEY(page_of) REFERENCES streamer(name);

ALTER TABLE channel 
ADD CONSTRAINT channel_g_channel_fk FOREIGN KEY (g_channel) REFERENCES game(game_name);

ALTER TABLE clips
ADD CONSTRAINT clips_clip_name_streamer_fk FOREIGN KEY(clip_name_streamer) REFERENCES streamer(name);

ALTER TABLE involved 
ADD CONSTRAINT involved_com_name_fk FOREIGN KEY(com_name) REFERENCES community(com_title);

ALTER TABLE teamcolor
ADD CONSTRAINT teamcolor_teamname_fk FOREIGN KEY(teamname) REFERENCES team(team_title);

ALTER TABLE stream_video
ADD CONSTRAINT stream_video_player_fk FOREIGN KEY(player) REFERENCES streamer(name);

ALTER TABLE topdono
ADD CONSTRAINT topdono_name_player_fk FOREIGN KEY(name_player) REFERENCES streamer(name);
