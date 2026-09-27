-- Generated; edit reviewed JSON tables and rerun exporter.
return {
  ["evidence"] = {
    ["$schema"] = "source-evidence-rules.schema.json",
    ["closedWorldRoots"] = {
      "flags",
      "visited",
      "itemsTaken",
      "hiddenTaken",
      "inventory",
      "pcItems",
      "party",
      "pokedex",
      "player",
      "hallOfFame",
      "pendingHallOfFame",
      "postGameHomeOk"
    },
    ["eventRules"] = {
      {
        ["eventId"] = "VISIT.VIRIDIAN_GYM",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.ROUTE_22",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.ROUTE_23",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.VICTORY_ROAD_1F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.VICTORY_ROAD_2F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.VICTORY_ROAD_3F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.INDIGO_PLATEAU_EXTERIOR",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.INDIGO_PLATEAU_CENTER",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_LORELEI",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_BRUNO",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_AGATHA",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_LANCE",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_CHAMPION",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_LEAGUE_HALL_OF_FAME",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_3"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_4"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_5"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_6"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VIRIDIAN_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "VIRIDIAN_GYM.GIOVANNI_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:giovanni"
      },
      {
        ["eventId"] = "VIRIDIAN_GYM.EARTH_BADGE",
        ["mode"] = "derived",
        ["value"] = "derive:giovanni"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM27",
            "inventory.TM_FISSURE",
            "pcItems.TM_FISSURE"
          }
        },
        ["eventId"] = "VIRIDIAN_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "VIRIDIAN_GYM.GIOVANNI_BATTLE"
        }
      },
      {
        ["eventId"] = "VIRIDIAN_GYM.HIDDEN_MACHO_BRACE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VIRIDIAN_GYM.EARTH_BADGE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE22_RIVAL_2ND_BATTLE"
          }
        },
        ["eventId"] = "ROUTE22.LATE_RIVAL_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_CASCADEBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.CASCADE_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_THUNDERBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.THUNDER_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_RAINBOWBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.RAINBOW_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_SOULBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.SOUL_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_MARSHBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.MARSH_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_VOLCANOBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.VOLCANO_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_23"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_PASSED_EARTHBADGE_CHECK"
          }
        },
        ["eventId"] = "ROUTE23.EARTH_BADGE_CHECK",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_1_TRAINER_0"
          }
        },
        ["eventId"] = "VICTORY_ROAD_1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_1_TRAINER_1"
          }
        },
        ["eventId"] = "VICTORY_ROAD_1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_2_TRAINER_0"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_2_TRAINER_1"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_2_TRAINER_2"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_2_TRAINER_3"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_2_TRAINER_4"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_3_TRAINER_0"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_3_TRAINER_1"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_3_TRAINER_2"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VICTORY_ROAD_3_TRAINER_3"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH"
          }
        },
        ["eventId"] = "VICTORY_ROAD_1F.BOULDER_SWITCH_1",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_VICTORY_ROAD_2_BOULDER_ON_SWITCH1"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.BOULDER_SWITCH_1",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_VICTORY_ROAD_2_BOULDER_ON_SWITCH2"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.BOULDER_SWITCH_2",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH1"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.BOULDER_SWITCH_1",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH2"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.BOULDER_SWITCH_2",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MOLTRES"
          }
        },
        ["eventId"] = "VICTORY_ROAD.MOLTRES_RESOLVED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_1F_obj_2"
          }
        },
        ["eventId"] = "VICTORY_ROAD_1F.TM_SKY_ATTACK_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_1F_obj_3"
          }
        },
        ["eventId"] = "VICTORY_ROAD_1F.RARE_CANDY",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_2F_obj_6"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TM_SUBMISSION_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_2F_obj_7"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.FULL_HEAL",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_2F_obj_8"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.TM_MEGA_KICK_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_2F_obj_9"
          }
        },
        ["eventId"] = "VICTORY_ROAD_2F.GUARD_SPEC",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_3F_obj_4"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.MAX_REVIVE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.VICTORY_ROAD_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.VICTORY_ROAD_3F_obj_5"
          }
        },
        ["eventId"] = "VICTORY_ROAD_3F.TM_EXPLOSION_ROLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "VICTORY_ROAD_1F.HIDDEN_ULTRA_BALL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VICTORY_ROAD_1F.HIDDEN_FULL_RESTORE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VICTORY_ROAD_2F.DOUBLE_EDGE_TUTOR",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VICTORY_ROAD_3F.COOL_COUPLE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_LORELEIS_ROOM_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_LEAGUE.LORELEI_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:league_sequence"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_BRUNOS_ROOM_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_LEAGUE.BRUNO_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:league_sequence"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_AGATHAS_ROOM_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_LEAGUE.AGATHA_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:league_sequence"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_LANCE"
          }
        },
        ["eventId"] = "POKEMON_LEAGUE.LANCE_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:league_sequence"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CHAMPION_RIVAL"
          }
        },
        ["eventId"] = "POKEMON_LEAGUE.CHAMPION_BATTLE",
        ["mode"] = "derived",
        ["value"] = "derive:league_sequence"
      },
      {
        ["eventId"] = "POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE",
        ["mode"] = "derived",
        ["value"] = "derive:hall_of_fame"
      },
      {
        ["eventId"] = "KANTO_STORY.COMPLETE",
        ["mode"] = "derived",
        ["value"] = "derive:story_complete"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_VIRIDIAN_TO_CHAMPION_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "champion.rby.evidence.json",
    ["materialization"] = "champion.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.VIRIDIAN_GYM",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_22",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_23",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.VICTORY_ROAD_1F",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_VICTORY_ROAD_1F"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.VICTORY_ROAD_2F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.VICTORY_ROAD_3F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.INDIGO_PLATEAU_EXTERIOR",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.INDIGO_PLATEAU_CENTER",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_LORELEI",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_POKEMON_LEAGUE_LORELEIS_ROOM"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_BRUNO",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_AGATHA",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_LANCE",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_CHAMPION",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_LEAGUE_HALL_OF_FAME",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_YUJI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_ATSUSHI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_TAMER_JASON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_KIYO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_WARREN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_5",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_TAKASHI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_6",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_TAMER_COLE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VIRIDIAN_GYM.TRAINER_SHARED_7",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_SAMUEL"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VIRIDIAN_GYM.GIOVANNI_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "GIOVANNI_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VIRIDIAN_GYM.EARTH_BADGE",
        ["profile"] = "reducer",
        ["reducer"] = "GIOVANNI_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VIRIDIAN_GYM.TM_REWARD",
        ["profile"] = "reducer",
        ["reducer"] = "GIOVANNI_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "VIRIDIAN_GYM.HIDDEN_MACHO_BRACE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_VIRIDIAN_CITY_GYM_MACHO_BRACE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE22.LATE_RIVAL_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "LATE_RIVAL",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.CASCADE_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.THUNDER_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.RAINBOW_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.SOUL_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.MARSH_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.VOLCANO_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "ROUTE23.EARTH_BADGE_CHECK",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_1F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_1F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_NAOMI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_1F.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_1F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_ROLANDO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_2F/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_DAISUKE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_2F/scripts.inc"
        },
        ["target"] = "TRAINER_JUGGLER_NELSON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_2F/scripts.inc"
        },
        ["target"] = "TRAINER_TAMER_VINCENT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_2F/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_DAWSON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_2F/scripts.inc"
        },
        ["target"] = "TRAINER_JUGGLER_GREGORY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_3F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_GEORGE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_3F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_ALEXA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_3F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_COLBY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/data/maps/VictoryRoad_3F/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_CAROLINE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VICTORY_ROAD_1F.BOULDER_SWITCH_1",
        ["profile"] = "reducer",
        ["reducer"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VICTORY_ROAD_2F.BOULDER_SWITCH_1",
        ["profile"] = "reducer",
        ["reducer"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VICTORY_ROAD_2F.BOULDER_SWITCH_2",
        ["profile"] = "reducer",
        ["reducer"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VICTORY_ROAD_3F.BOULDER_SWITCH_1",
        ["profile"] = "reducer",
        ["reducer"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VICTORY_ROAD_3F.BOULDER_SWITCH_2",
        ["profile"] = "reducer",
        ["reducer"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_MOLTRES"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_MOLTRES"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_MOLTRES"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_MOLTRES"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD.MOLTRES_RESOLVED",
        ["profile"] = "legendary",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_FOUGHT_MOLTRES",
          "FLAG_HIDE_MOLTRES"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_1F.TM_SKY_ATTACK_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_1F_TM02"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_1F.RARE_CANDY",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_1F_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TM_SUBMISSION_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_2F_TM37"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.FULL_HEAL",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_2F_FULL_HEAL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.TM_MEGA_KICK_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_2F_TM07"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_2F.GUARD_SPEC",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_2F_GUARD_SPEC"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.MAX_REVIVE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_3F_MAX_REVIVE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VICTORY_ROAD_3F.TM_EXPLOSION_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_VICTORY_ROAD_3F_TM50"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "VICTORY_ROAD_1F.HIDDEN_ULTRA_BALL",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_VICTORY_ROAD_1F_ULTRA_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "VICTORY_ROAD_1F.HIDDEN_FULL_RESTORE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_VICTORY_ROAD_1F_FULL_RESTORE"
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "VICTORY_ROAD_2F.DOUBLE_EDGE_TUTOR",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "VICTORY_ROAD_3F.COOL_COUPLE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_COOL_COUPLE_RAY_TYRA"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.LORELEI_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.BRUNO_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.AGATHA_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.LANCE_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.CHAMPION_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE",
        ["profile"] = "reducer",
        ["reducer"] = "POKEMON_LEAGUE_SEQUENCE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "KANTO_STORY.COMPLETE",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      }
    },
    ["reducers"] = {
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_GIOVANNI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LEADER_GIOVANNI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE08_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM26_FROM_GIOVANNI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_VIRIDIAN_GIOVANNI"
              }
            },
            ["when"] = "GIOVANNI_BATTLE not completed"
          },
          {
            ["id"] = "tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LEADER_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE08_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM26_FROM_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_MISC_KANTO_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_VIRIDIAN_GIOVANNI"
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and EARTH_BADGE completed and TM_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LEADER_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE08_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM26_FROM_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_MISC_KANTO_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_VIRIDIAN_GIOVANNI"
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and EARTH_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "GIOVANNI_REWARD",
        ["inputs"] = {
          "VIRIDIAN_GYM.GIOVANNI_BATTLE",
          "VIRIDIAN_GYM.EARTH_BADGE",
          "VIRIDIAN_GYM.TM_REWARD"
        },
        ["owns"] = {
          "TRAINER_LEADER_GIOVANNI",
          "FLAG_DEFEATED_LEADER_GIOVANNI",
          "FLAG_BADGE08_GET",
          "FLAG_GOT_TM26_FROM_GIOVANNI",
          "ITEM_TM26",
          "FLAG_HIDE_VIRIDIAN_GIOVANNI",
          "FLAG_HIDE_MISC_KANTO_ROCKETS"
        },
        ["references"] = {
          "pokefirered/data/maps/ViridianCity_Gym/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "gym_pending",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE22",
                ["value"] = 2
              }
            },
            ["when"] = "GIOVANNI_BATTLE not completed"
          },
          {
            ["id"] = "rival_available",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE22",
                ["value"] = 3
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and LATE_RIVAL_BATTLE not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE22",
                ["value"] = 4
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_ROUTE22_LATE_SQUIRTLE"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_ROUTE22_LATE_CHARMANDER"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_ROUTE22_LATE_BULBASAUR"
                }
              }
            },
            ["when"] = "LATE_RIVAL_BATTLE completed"
          }
        },
        ["id"] = "LATE_RIVAL",
        ["inputs"] = {
          "VIRIDIAN_GYM.GIOVANNI_BATTLE",
          "ROUTE22.LATE_RIVAL_BATTLE"
        },
        ["owns"] = {
          "VAR_MAP_SCENE_ROUTE22",
          "TRAINER_RIVAL_ROUTE22_LATE_SQUIRTLE",
          "TRAINER_RIVAL_ROUTE22_LATE_BULBASAUR",
          "TRAINER_RIVAL_ROUTE22_LATE_CHARMANDER"
        },
        ["references"] = {
          "pokefirered/data/maps/Route22/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "reset",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VICTORY_ROAD_1F",
                ["value"] = 0
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VICTORY_ROAD_2F_BOULDER1",
                ["value"] = 0
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VICTORY_ROAD_2F_BOULDER2",
                ["value"] = 0
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VICTORY_ROAD_3F",
                ["value"] = 0
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_VICTORY_ROAD_2F_BOULDER"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_VICTORY_ROAD_3F_BOULDER"
              }
            },
            ["when"] = "BOULDER_SWITCH_1 in [available,in_progress,unseen] or BOULDER_SWITCH_1 completed"
          }
        },
        ["id"] = "VICTORY_ROAD_RUNTIME_RESET",
        ["inputs"] = {
          "VICTORY_ROAD_1F.BOULDER_SWITCH_1",
          "VICTORY_ROAD_2F.BOULDER_SWITCH_1",
          "VICTORY_ROAD_2F.BOULDER_SWITCH_2",
          "VICTORY_ROAD_3F.BOULDER_SWITCH_1",
          "VICTORY_ROAD_3F.BOULDER_SWITCH_2"
        },
        ["owns"] = {
          "VAR_MAP_SCENE_VICTORY_ROAD_1F",
          "VAR_MAP_SCENE_VICTORY_ROAD_2F_BOULDER1",
          "VAR_MAP_SCENE_VICTORY_ROAD_2F_BOULDER2",
          "VAR_MAP_SCENE_VICTORY_ROAD_3F",
          "FLAG_HIDE_VICTORY_ROAD_2F_BOULDER",
          "FLAG_HIDE_VICTORY_ROAD_3F_BOULDER"
        },
        ["references"] = {
          "pokefirered/data/maps/Route23/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "fresh",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 0
              }
            },
            ["when"] = "LORELEI_BATTLE not completed"
          },
          {
            ["id"] = "through_lorelei",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              }
            },
            ["when"] = "LORELEI_BATTLE completed and BRUNO_BATTLE not completed"
          },
          {
            ["id"] = "through_bruno",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 2
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              }
            },
            ["when"] = "BRUNO_BATTLE completed and AGATHA_BATTLE not completed"
          },
          {
            ["id"] = "through_agatha",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 3
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              }
            },
            ["when"] = "AGATHA_BATTLE completed and LANCE_BATTLE not completed"
          },
          {
            ["id"] = "through_lance",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 4
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              }
            },
            ["when"] = "LANCE_BATTLE completed and CHAMPION_BATTLE not completed"
          },
          {
            ["id"] = "champion_pending_induction",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 4
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
                }
              }
            },
            ["when"] = "CHAMPION_BATTLE completed and HALL_OF_FAME_COMPLETE not completed"
          },
          {
            ["id"] = "post_hall_of_fame",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LORELEI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_BRUNO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_AGATHA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LANCE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_CHAMP"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LORELEI"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_BRUNO"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_AGATHA"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_ELITE_FOUR_LANCE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_CHAMPION_FIRST_CHARMANDER"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_SYS_GAME_CLEAR"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_LEAGUE",
                ["value"] = 0
              }
            },
            ["when"] = "HALL_OF_FAME_COMPLETE completed"
          }
        },
        ["id"] = "POKEMON_LEAGUE_SEQUENCE",
        ["inputs"] = {
          "POKEMON_LEAGUE.LORELEI_BATTLE",
          "POKEMON_LEAGUE.BRUNO_BATTLE",
          "POKEMON_LEAGUE.AGATHA_BATTLE",
          "POKEMON_LEAGUE.LANCE_BATTLE",
          "POKEMON_LEAGUE.CHAMPION_BATTLE",
          "POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE"
        },
        ["owns"] = {
          "FLAG_DEFEATED_LORELEI",
          "FLAG_DEFEATED_BRUNO",
          "FLAG_DEFEATED_AGATHA",
          "FLAG_DEFEATED_LANCE",
          "FLAG_DEFEATED_CHAMP",
          "TRAINER_ELITE_FOUR_LORELEI",
          "TRAINER_ELITE_FOUR_BRUNO",
          "TRAINER_ELITE_FOUR_AGATHA",
          "TRAINER_ELITE_FOUR_LANCE",
          "TRAINER_CHAMPION_FIRST_SQUIRTLE",
          "TRAINER_CHAMPION_FIRST_BULBASAUR",
          "TRAINER_CHAMPION_FIRST_CHARMANDER",
          "FLAG_SYS_GAME_CLEAR",
          "VAR_MAP_SCENE_POKEMON_LEAGUE",
          "FLAG_SYS_GAME_CLEAR"
        },
        ["references"] = {
          "pokefirered/data/scripts/hall_of_fame.inc",
          "pokefirered/data/maps/PokemonLeague_HallOfFame/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_VIRIDIAN_TO_CHAMPION_COMPLETE"
  },
  ["runtimeIds"] = {
    ["items"] = {},
    ["trainers"] = {
      ["TRAINER_BLACK_BELT_ATSUSHI"] = 322,
      ["TRAINER_BLACK_BELT_DAISUKE"] = 325,
      ["TRAINER_BLACK_BELT_KIYO"] = 323,
      ["TRAINER_BLACK_BELT_TAKASHI"] = 324,
      ["TRAINER_CHAMPION_FIRST_BULBASAUR"] = 439,
      ["TRAINER_CHAMPION_FIRST_CHARMANDER"] = 440,
      ["TRAINER_CHAMPION_FIRST_SQUIRTLE"] = 438,
      ["TRAINER_COOLTRAINER_ALEXA"] = 404,
      ["TRAINER_COOLTRAINER_CAROLINE"] = 403,
      ["TRAINER_COOLTRAINER_COLBY"] = 394,
      ["TRAINER_COOLTRAINER_GEORGE"] = 393,
      ["TRAINER_COOLTRAINER_NAOMI"] = 406,
      ["TRAINER_COOLTRAINER_ROLANDO"] = 396,
      ["TRAINER_COOLTRAINER_SAMUEL"] = 392,
      ["TRAINER_COOLTRAINER_WARREN"] = 401,
      ["TRAINER_COOLTRAINER_YUJI"] = 400,
      ["TRAINER_COOL_COUPLE_RAY_TYRA"] = 485,
      ["TRAINER_ELITE_FOUR_AGATHA"] = 412,
      ["TRAINER_ELITE_FOUR_BRUNO"] = 411,
      ["TRAINER_ELITE_FOUR_LANCE"] = 413,
      ["TRAINER_ELITE_FOUR_LORELEI"] = 410,
      ["TRAINER_JUGGLER_GREGORY"] = 290,
      ["TRAINER_JUGGLER_NELSON"] = 287,
      ["TRAINER_LEADER_GIOVANNI"] = 350,
      ["TRAINER_POKEMANIAC_DAWSON"] = 167,
      ["TRAINER_RIVAL_ROUTE22_LATE_BULBASAUR"] = 436,
      ["TRAINER_RIVAL_ROUTE22_LATE_CHARMANDER"] = 437,
      ["TRAINER_RIVAL_ROUTE22_LATE_SQUIRTLE"] = 435,
      ["TRAINER_TAMER_COLE"] = 297,
      ["TRAINER_TAMER_JASON"] = 296,
      ["TRAINER_TAMER_VINCENT"] = 298
    }
  }
}
