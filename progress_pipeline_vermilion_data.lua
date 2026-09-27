-- Generated; edit the reviewed JSON tables and rerun the exporter.
return {
  ["evidence"] = {
    ["$schema"] = "source-evidence-rules.schema.json",
    ["closedWorldRoots"] = {
      "flags",
      "visited",
      "defeatedTrainers",
      "itemsTaken",
      "hiddenTaken",
      "objectToggles",
      "daycare",
      "inventory",
      "pcItems",
      "party",
      "pokedex",
      "player"
    },
    ["eventRules"] = {
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_5",
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_0",
            "visited.VERMILION_CITY"
          }
        },
        ["eventId"] = "VISIT.ROUTE_5",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "ROUTE5.DAY_CARE_OCCUPANCY",
        ["mode"] = "derived",
        ["note"] = "Native RBY saves use daycare.mon; normalized saves may use daycare.slots. A readable payload means occupied, an empty slots object means available, and sparse whole-record absence also means empty.",
        ["value"] = "derive:daycare_occupancy"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=UNDERGROUND_PATH_NORTH_SOUTH",
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_0",
            "visited.VERMILION_CITY"
          }
        },
        ["eventId"] = "VISIT.UNDERGROUND_PATH_NORTH_SOUTH",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_POTION",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ANTIDOTE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_BURN_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_AWAKENING",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ICE_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_PARALYZE_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ETHER",
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
            "player.map=ROUTE_6",
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_0",
            "visited.VERMILION_CITY"
          }
        },
        ["eventId"] = "VISIT.ROUTE_6",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_0",
            "defeatedTrainers.ROUTE_6_obj_1"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_1",
            "defeatedTrainers.ROUTE_6_obj_2"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_2",
            "defeatedTrainers.ROUTE_6_obj_3"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_3",
            "defeatedTrainers.ROUTE_6_obj_4"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_4",
            "defeatedTrainers.ROUTE_6_obj_5"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_6_TRAINER_5",
            "defeatedTrainers.ROUTE_6_obj_6"
          }
        },
        ["eventId"] = "ROUTE6.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE6.HIDDEN_SITRUS_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE6.HIDDEN_RARE_CANDY",
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
            "visited.VERMILION_CITY",
            "player.map=VERMILION_CITY"
          }
        },
        ["eventId"] = "VISIT.VERMILION_CITY",
        ["mode"] = "visit"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.BIT_GOT_OLD_ROD",
            "inventory.OLD_ROD",
            "pcItems.OLD_ROD"
          }
        },
        ["eventId"] = "VERMILION.OLD_ROD_GIFT",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "VERMILION.FARFETCHD_TRADE",
        ["mode"] = "unresolved",
        ["note"] = "No authoritative decoded trade-completion byte; owning Farfetch'd is insufficient."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_RECEIVED_BIKE_VOUCHER",
            "flags.EVENT_GOT_BIKE_VOUCHER",
            "inventory.BIKE_VOUCHER",
            "pcItems.BIKE_VOUCHER"
          }
        },
        ["eventId"] = "VERMILION.BIKE_VOUCHER_GIFT",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.VERMILION_CITY_14_11"
          }
        },
        ["eventId"] = "VERMILION.HIDDEN_MAX_ETHER",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "VERMILION.VS_SEEKER_GIFT",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VERMILION.POST_SURGE_OAKS_AIDE",
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
            "flags.EVENT_GOT_SS_TICKET",
            "inventory.S_S_TICKET",
            "flags.EVENT_SS_ANNE_LEFT"
          }
        },
        ["eventId"] = "VERMILION.HARBOR_TICKET_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:harbor_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_RIVAL",
            "flags.EVENT_GOT_HM01",
            "flags.EVENT_SS_ANNE_LEFT",
            "flags.EVENT_BEAT_SS_ANNE_8_TRAINER_0",
            "itemsTaken.SS_ANNE_1F_ROOMS_obj_10"
          }
        },
        ["eventId"] = "VISIT.SS_ANNE",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_RIVAL"
          }
        },
        ["eventId"] = "SS_ANNE.RIVAL_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SS_ANNE.RIVAL_BATTLE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_RUBBED_CAPTAINS_BACK"
          }
        },
        ["eventId"] = "SS_ANNE.CAPTAIN_BACK_RUB",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_HM01",
            "inventory.HM_CUT",
            "pcItems.HM_CUT"
          }
        },
        ["eventId"] = "SS_ANNE.HM01_CUT_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "SS_ANNE.CAPTAIN_BACK_RUB"
        }
      },
      {
        ["eventId"] = "SS_ANNE.DEPARTURE_ARMED",
        ["mode"] = "derived",
        ["value"] = "derive:departure_armed"
      },
      {
        ["availableAfter"] = {
          "SS_ANNE.DEPARTURE_ARMED"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SS_ANNE_LEFT"
          }
        },
        ["eventId"] = "SS_ANNE.SHIP_DEPARTED",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_8_TRAINER_0"
          }
        },
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_8_TRAINER_1"
          }
        },
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_8_TRAINER_2"
          }
        },
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_8_TRAINER_3"
          }
        },
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_9_TRAINER_0"
          }
        },
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_9_TRAINER_1"
          }
        },
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_9_TRAINER_2"
          }
        },
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_9_TRAINER_3"
          }
        },
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_0"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_1"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_2"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_3"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_4"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_10_TRAINER_5"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_5_TRAINER_0"
          }
        },
        ["eventId"] = "SS_ANNE_DECK.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SS_ANNE_5_TRAINER_1"
          }
        },
        ["eventId"] = "SS_ANNE_DECK.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_1F_ROOMS_obj_10"
          }
        },
        ["eventId"] = "SS_ANNE_1F.TM08_BODY_SLAM_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_2F_ROOMS_obj_6"
          }
        },
        ["eventId"] = "SS_ANNE_2F.MAX_ETHER_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_2F_ROOMS_obj_9"
          }
        },
        ["eventId"] = "SS_ANNE_2F.RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_B1F_ROOMS_obj_9"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.ETHER_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_B1F_ROOMS_obj_10"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.TM44_REST_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SS_ANNE_B1F_ROOMS_obj_11"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.MAX_POTION_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.SS_ANNE_KITCHEN_13_9"
          }
        },
        ["eventId"] = "SS_ANNE_KITCHEN.GREAT_BALL_PICKUP",
        ["mode"] = "exact",
        ["note"] = "RBY hidden item becomes a visible FireRed pickup; role identity wins over presentation."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.SS_ANNE_B1F_ROOMS_3_1"
          }
        },
        ["eventId"] = "SS_ANNE_B1F.HIDDEN_HYPER_POTION",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_CHESTO_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_PECHA_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_CHERI_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SS_ANNE_EXTERIOR.HIDDEN_LAVA_COOKIE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VERMILION_GYM.CUT_TREE_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:cut_tree_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VERMILION_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VERMILION_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_VERMILION_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "VERMILION_GYM.FIRST_SWITCH_FOUND",
        ["mode"] = "derived",
        ["note"] = "An unfinished source puzzle is normalized back to available; trash indices are never copied.",
        ["value"] = "derive:first_switch"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_2ND_LOCK_OPENED",
            "flags.EVENT_BEAT_LT_SURGE"
          }
        },
        ["eventId"] = "VERMILION_GYM.DOOR_UNLOCKED",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_LT_SURGE"
          }
        },
        ["eventId"] = "VERMILION_GYM.LT_SURGE_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_LT_SURGE",
            "inventory.THUNDERBADGE"
          }
        },
        ["eventId"] = "VERMILION_GYM.THUNDER_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM24"
          }
        },
        ["eventId"] = "VERMILION_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "VERMILION_GYM.LT_SURGE_BATTLE"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_11",
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_0",
            "flags.EVENT_GOT_ITEMFINDER"
          }
        },
        ["eventId"] = "VISIT.ROUTE_11",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_11_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE11.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE11.X_DEFEND_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE11.GREAT_BALL_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE11.AWAKENING_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE11.HIDDEN_ESCAPE_ROPE",
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
            "flags.EVENT_GOT_ITEMFINDER",
            "inventory.ITEMFINDER",
            "pcItems.ITEMFINDER"
          }
        },
        ["eventId"] = "ROUTE11.ITEMFINDER_GIFT",
        ["mode"] = "exact",
        ["value"] = "derive:itemfinder_state"
      },
      {
        ["eventId"] = "ROUTE11.NIDORINO_NIDORINA_TRADE",
        ["mode"] = "unresolved",
        ["note"] = "No authoritative decoded trade-completion record."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=DIGLETTS_CAVE",
            "player.map=DIGLETTS_CAVE_ROUTE_11",
            "player.map=DIGLETTS_CAVE_ROUTE_2",
            "flags.EVENT_GOT_HM05"
          }
        },
        ["eventId"] = "VISIT.DIGLETTS_CAVE",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=DIGLETTS_CAVE_ROUTE_2",
            "flags.EVENT_GOT_HM05"
          }
        },
        ["eventId"] = "VERMILION_ARC.ROUTE2_RETURN_REACHED",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "VERMILION_ARC.ROUTE9_DEPARTURE_READY",
        ["mode"] = "derived",
        ["value"] = "derive:route9_departure"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_ROUTE5_TO_VERMILION_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "route5-to-vermilion.rby.evidence.json",
    ["materialization"] = "route5-to-vermilion.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_5",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route5/map.json"
        }
      },
      {
        ["disposition"] = "external_subsystem",
        ["eventId"] = "ROUTE5.DAY_CARE_OCCUPANCY",
        ["notes"] = {
          "Collection conversion carries the single occupied RBY payload into the FireRed PC, realizes deferred step EXP, and acknowledges the transfer before commit."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/Route5_PokemonDayCare/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.UNDERGROUND_PATH_NORTH_SOUTH",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_POTION",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_POTION"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ANTIDOTE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_ANTIDOTE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_BURN_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_BURN_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_AWAKENING",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_AWAKENING"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ICE_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_ICE_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_PARALYZE_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_PARALYZE_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_NS.HIDDEN_ETHER",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/UndergroundPath_NorthSouthTunnel/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL_ETHER"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_6",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route6/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_CAMPER_RICKY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_NANCY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_KEIGO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_CAMPER_JEFF"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_ISABELLE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE6.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route6/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_ELIJAH"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE6.HIDDEN_SITRUS_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route6/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE6_SITRUS_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE6.HIDDEN_RARE_CANDY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route6/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE6_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.VERMILION_CITY",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_VERMILION_CITY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_OLD_ROD"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_OLD_ROD"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_OLD_ROD"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION.OLD_ROD_GIFT",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_House1/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_OLD_ROD",
          "ITEM_OLD_ROD"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION.FARFETCHD_TRADE",
        ["notes"] = {
          "Collection conversion owns the actual traded Pokemon and never creates a duplicate."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_House2/scripts.inc"
        },
        ["target"] = "FLAG_DID_CH_DING_TRADE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION.BIKE_VOUCHER_GIFT",
        ["profile"] = "external_item",
        ["reducer"] = "BIKE_VOUCHER_STATE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_PokemonFanClub/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION.HIDDEN_MAX_ETHER",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_VERMILION_CITY_MAX_ETHER"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_VS_SEEKER"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_VS_SEEKER"
          }
        },
        ["disposition"] = "target_default",
        ["eventId"] = "VERMILION.VS_SEEKER_GIFT",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_VS_SEEKER",
          "ITEM_VS_SEEKER"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION.POST_SURGE_OAKS_AIDE",
        ["profile"] = "target_default_available",
        ["reducer"] = "VERMILION_SURGE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION.HARBOR_TICKET_ACCESS",
        ["profile"] = "reducer_input",
        ["reducer"] = "SS_ANNE_SHIP_STATE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.SS_ANNE",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Exterior/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_SSANNE_EXTERIOR"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SS_ANNE.RIVAL_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "SS_ANNE_RIVAL",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Corridor/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SS_ANNE.CAPTAIN_BACK_RUB",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "SS_ANNE_SHIP_STATE",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_CaptainsOffice/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SS_ANNE.HM01_CUT_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "SS_ANNE_SHIP_STATE",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_CaptainsOffice/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SS_ANNE.DEPARTURE_ARMED",
        ["profile"] = "reducer_input",
        ["reducer"] = "SS_ANNE_SHIP_STATE",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Exterior/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SS_ANNE.SHIP_DEPARTED",
        ["profile"] = "reducer_input",
        ["reducer"] = "SS_ANNE_SHIP_STATE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_1F_Room7/scripts.inc"
        },
        ["target"] = "TRAINER_GENTLEMAN_THOMAS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_1F_Room5/scripts.inc"
        },
        ["target"] = "TRAINER_GENTLEMAN_ARTHUR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_1F_Room2/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_TYLER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_1F_Room2/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_ANN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room2/scripts.inc"
        },
        ["target"] = "TRAINER_GENTLEMAN_BROOKS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room2/scripts.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_DALE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room4/scripts.inc"
        },
        ["target"] = "TRAINER_GENTLEMAN_LAMAR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room4/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_DAWN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_0",
        ["notes"] = {
          "Matched by the level-21 Shellder party as well as composite-room position."
        },
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room4/scripts.inc",
          "pokefirered/src/data/trainer_parties.h"
        },
        ["target"] = "TRAINER_SAILOR_LEONARD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_1",
        ["notes"] = {
          "Matched by the level-17 Horsea/Shellder/Tentacool party as well as composite-room position."
        },
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room4/scripts.inc",
          "pokefirered/src/data/trainer_parties.h"
        },
        ["target"] = "TRAINER_SAILOR_DUNCAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room2/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_HUEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room3/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_DYLAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room1/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_PHILLIP"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room1/scripts.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_BARNY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_DECK.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Deck/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_EDMOND"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_DECK.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Deck/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_TREVOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_1F.TM08_BODY_SLAM_PICKUP",
        ["notes"] = {
          "RBY TM08 room slot maps positionally to FireRed TM31."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_1F_Room2/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_1F_ROOM2_TM31"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.MAX_ETHER_PICKUP",
        ["notes"] = {
          "RBY Max Ether room slot maps positionally to FireRed Stardust."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room2/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_2F_ROOM2_STARDUST"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_2F.RARE_CANDY_PICKUP",
        ["notes"] = {
          "RBY Rare Candy room slot maps positionally to FireRed X Attack."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Room4/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_2F_ROOM4_X_ATTACK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.ETHER_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room3/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_B1F_ROOM3_ETHER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.TM44_REST_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room2/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_B1F_ROOM2_TM44"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.MAX_POTION_PICKUP",
        ["notes"] = {
          "RBY Max Potion room slot maps positionally to FireRed Super Potion."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Room5/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_B1F_ROOM5_SUPER_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_KITCHEN.GREAT_BALL_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Kitchen/map.json"
        },
        ["target"] = "FLAG_HIDE_SSANNE_KITCHEN_GREAT_BALL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SS_ANNE_B1F.HIDDEN_HYPER_POTION",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_B1F_Corridor/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SSANNE_B1F_CORRIDOR_HYPER_POTION"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_CHESTO_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Kitchen/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SSANNE_KITCHEN_CHESTO_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_PECHA_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Kitchen/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SSANNE_KITCHEN_PECHA_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SS_ANNE_KITCHEN.HIDDEN_CHERI_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Kitchen/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SSANNE_KITCHEN_CHERI_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SS_ANNE_EXTERIOR.HIDDEN_LAVA_COOKIE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/SSAnne_Exterior/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SSANNE_EXTERIOR_LAVA_COOKIE"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VERMILION_GYM.CUT_TREE_ACCESS",
        ["notes"] = {
          "Cut-tree removal is map-runtime state; HM01 plus party field-move validation controls access."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_GENTLEMAN_TUCKER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_ENGINEER_BAILY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VERMILION_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_SAILOR_DWAYNE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION_GYM.FIRST_SWITCH_FOUND",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "VERMILION_GYM_PUZZLE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION_GYM.DOOR_UNLOCKED",
        ["profile"] = "reducer_input",
        ["reducer"] = "VERMILION_GYM_PUZZLE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION_GYM.LT_SURGE_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "VERMILION_SURGE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION_GYM.THUNDER_BADGE",
        ["profile"] = "reducer_input",
        ["reducer"] = "VERMILION_SURGE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "VERMILION_GYM.TM_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "VERMILION_SURGE",
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_11",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route11/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_GAMER_HUGO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_GAMER_JASPER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_EDDIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_ENGINEER_BRAXTON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_DILLON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_5",
        ["notes"] = {
          "Matched by the Voltorb/Magnemite party."
        },
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc",
          "pokefirered/src/data/trainer_parties.h"
        },
        ["target"] = "TRAINER_GAMER_DIRK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_6",
        ["notes"] = {
          "Matched by the Growlithe/Vulpix party."
        },
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc",
          "pokefirered/src/data/trainer_parties.h"
        },
        ["target"] = "TRAINER_GAMER_DARIAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_YASU"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_ENGINEER_BERNIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.TRAINER_SHARED_9",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route11/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_DAVE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE11.X_DEFEND_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route11/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE11_X_DEFEND"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE11.GREAT_BALL_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route11/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE11_GREAT_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE11.AWAKENING_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route11/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE11_AWAKENING"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE11.HIDDEN_ESCAPE_ROPE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route11/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE11_ESCAPE_ROPE"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_ITEMFINDER"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_ITEMFINDER"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_ITEMFINDER"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.ITEMFINDER_GIFT",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/Route11_EastEntrance_2F/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_ITEMFINDER",
          "ITEM_ITEMFINDER"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE11.NIDORINO_NIDORINA_TRADE",
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/Route11_EastEntrance_2F/scripts.inc"
        },
        ["target"] = "FLAG_DID_NINA_TRADE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.DIGLETTS_CAVE",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/DiglettsCave_B1F/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_DIGLETTS_CAVE_B1F"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VERMILION_ARC.ROUTE2_RETURN_REACHED",
        ["notes"] = {
          "Slice 1 exclusively owns Route 2 pickups, trade, and Flash."
        },
        ["profile"] = "location_only",
        ["protectedTargets"] = {
          "FLAG_GOT_HM05",
          "ITEM_HM05"
        },
        ["references"] = {
          "pokefirered/data/maps/Route2_EastBuilding/scripts.inc"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VERMILION_ARC.ROUTE9_DEPARTURE_READY",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/map.json",
          "pokefirered/data/maps/Route9/map.json"
        }
      }
    },
    ["reducers"] = {
      {
        ["cases"] = {
          {
            ["id"] = "voucher_available",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_BIKE_VOUCHER"
              }
            },
            ["when"] = "BIKE_VOUCHER_GIFT not completed"
          },
          {
            ["id"] = "voucher_held",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_BIKE_VOUCHER"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_BIKE_VOUCHER"
              }
            },
            ["when"] = "BIKE_VOUCHER_GIFT completed and inherited CERULEAN.BICYCLE_ACQUIRED not completed"
          },
          {
            ["id"] = "voucher_redeemed",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_BIKE_VOUCHER"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_BIKE_VOUCHER"
              }
            },
            ["when"] = "BIKE_VOUCHER_GIFT completed and inherited CERULEAN.BICYCLE_ACQUIRED completed"
          }
        },
        ["id"] = "BIKE_VOUCHER_STATE",
        ["inputs"] = {
          "VERMILION.BIKE_VOUCHER_GIFT"
        },
        ["notes"] = {
          "Slice 2 owns Bicycle acquisition. This reducer prevents a later Slice 3 pass from recreating an already redeemed voucher."
        },
        ["owns"] = {
          "FLAG_GOT_BIKE_VOUCHER",
          "ITEM_BIKE_VOUCHER"
        },
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_PokemonFanClub/scripts.inc",
          "pokefirered/data/maps/CeruleanCity_BikeShop/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "rival_available",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_S_S_ANNE_2F_CORRIDOR",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SS_ANNE_RIVAL"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SS_ANNE_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SS_ANNE_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SS_ANNE_CHARMANDER"
              }
            },
            ["when"] = "RIVAL_BATTLE not completed"
          },
          {
            ["id"] = "rival_completed",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_S_S_ANNE_2F_CORRIDOR",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SS_ANNE_RIVAL"
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SS_ANNE_CHARMANDER"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SS_ANNE_SQUIRTLE"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SS_ANNE_BULBASAUR"
                }
              }
            },
            ["when"] = "RIVAL_BATTLE completed"
          }
        },
        ["id"] = "SS_ANNE_RIVAL",
        ["inputs"] = {
          "SS_ANNE.RIVAL_BATTLE"
        },
        ["notes"] = {
          "Requires the supported starter branch inherited from Slice 1; current party composition is never used."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_S_S_ANNE_2F_CORRIDOR",
          "FLAG_HIDE_SS_ANNE_RIVAL",
          "TRAINER_RIVAL_SS_ANNE_SQUIRTLE",
          "TRAINER_RIVAL_SS_ANNE_BULBASAUR",
          "TRAINER_RIVAL_SS_ANNE_CHARMANDER"
        },
        ["references"] = {
          "pokefirered/data/maps/SSAnne_2F_Corridor/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "ship_present_cut_available",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HM01"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VERMILION_CITY",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SS_ANNE"
              }
            },
            ["when"] = "HM01_CUT_REWARD not completed"
          },
          {
            ["id"] = "cut_obtained_departure_armed",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_HM01"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM01"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VERMILION_CITY",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SS_ANNE"
              }
            },
            ["when"] = "HM01_CUT_REWARD completed and SHIP_DEPARTED not completed"
          },
          {
            ["id"] = "ship_departed",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_HM01"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM01"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_VERMILION_CITY",
                ["value"] = 3
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SS_ANNE"
              }
            },
            ["when"] = "HM01_CUT_REWARD completed and SHIP_DEPARTED completed"
          }
        },
        ["id"] = "SS_ANNE_SHIP_STATE",
        ["inputs"] = {
          "VERMILION.HARBOR_TICKET_ACCESS",
          "SS_ANNE.CAPTAIN_BACK_RUB",
          "SS_ANNE.HM01_CUT_REWARD",
          "SS_ANNE.DEPARTURE_ARMED",
          "SS_ANNE.SHIP_DEPARTED"
        },
        ["notes"] = {
          "Never persists FireRed scene value 2 or an RBY forced-walk microstate. Captain-back-rub evidence alone leaves HM01 claimable."
        },
        ["owns"] = {
          "FLAG_GOT_HM01",
          "ITEM_HM01",
          "VAR_MAP_SCENE_VERMILION_CITY",
          "FLAG_HIDE_SS_ANNE"
        },
        ["references"] = {
          "pokefirered/data/maps/SSAnne_CaptainsOffice/scripts.inc",
          "pokefirered/data/maps/SSAnne_Exterior/scripts.inc",
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["audit"] = "Any source first-switch index is discarded; FireRed starts a fresh randomized attempt.",
            ["id"] = "puzzle_replayable",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_FOUND_BOTH_VERMILION_GYM_SWITCHES"
              }
            },
            ["when"] = "DOOR_UNLOCKED not completed"
          },
          {
            ["id"] = "doors_open",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_FOUND_BOTH_VERMILION_GYM_SWITCHES"
              }
            },
            ["when"] = "DOOR_UNLOCKED completed"
          }
        },
        ["id"] = "VERMILION_GYM_PUZZLE",
        ["inputs"] = {
          "VERMILION_GYM.FIRST_SWITCH_FOUND",
          "VERMILION_GYM.DOOR_UNLOCKED"
        },
        ["notes"] = {
          "FLAG_TEMP_1 and trash indices are deliberately outside durable ownership."
        },
        ["owns"] = {
          "FLAG_FOUND_BOTH_VERMILION_GYM_SWITCHES"
        },
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "surge_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_LT_SURGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_LT_SURGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE03_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM34_FROM_SURGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_TALKED_TO_OAKS_AIDE_IN_VERMILION"
              }
            },
            ["when"] = "LT_SURGE_BATTLE not completed"
          },
          {
            ["conditionalOperationsByInheritedFlash"] = {
              ["completed"] = {
                {
                  ["op"] = "set_flag",
                  ["symbol"] = "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE"
                }
              },
              ["not_completed"] = {
                {
                  ["op"] = "clear_flag",
                  ["symbol"] = "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE"
                },
                {
                  ["op"] = "clear_flag",
                  ["symbol"] = "FLAG_TALKED_TO_OAKS_AIDE_IN_VERMILION"
                }
              }
            },
            ["id"] = "surge_defeated_tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_LT_SURGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LT_SURGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE03_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM34_FROM_SURGE"
              }
            },
            ["when"] = "LT_SURGE_BATTLE completed and THUNDER_BADGE completed and TM_REWARD in [unseen,available,reward_pending]"
          },
          {
            ["conditionalOperationsByInheritedFlash"] = {
              ["completed"] = {
                {
                  ["op"] = "set_flag",
                  ["symbol"] = "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE"
                }
              },
              ["not_completed"] = {
                {
                  ["op"] = "clear_flag",
                  ["symbol"] = "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE"
                },
                {
                  ["op"] = "clear_flag",
                  ["symbol"] = "FLAG_TALKED_TO_OAKS_AIDE_IN_VERMILION"
                }
              }
            },
            ["id"] = "surge_complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_LT_SURGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_LT_SURGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE03_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM34_FROM_SURGE"
              }
            },
            ["when"] = "LT_SURGE_BATTLE completed and THUNDER_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "VERMILION_SURGE",
        ["inputs"] = {
          "VERMILION.POST_SURGE_OAKS_AIDE",
          "VERMILION_GYM.LT_SURGE_BATTLE",
          "VERMILION_GYM.THUNDER_BADGE",
          "VERMILION_GYM.TM_REWARD"
        },
        ["notes"] = {
          "RBY TM24 Thunderbolt role-maps to FireRed TM34 Shock Wave. The aide branch reads inherited Slice-1 ROUTE2.FLASH_GIFT so Flash is not granted twice."
        },
        ["owns"] = {
          "TRAINER_LEADER_LT_SURGE",
          "FLAG_DEFEATED_LT_SURGE",
          "FLAG_BADGE03_GET",
          "FLAG_GOT_TM34_FROM_SURGE",
          "ITEM_TM34",
          "FLAG_HIDE_VERMILION_CITY_OAKS_AIDE",
          "FLAG_TALKED_TO_OAKS_AIDE_IN_VERMILION"
        },
        ["references"] = {
          "pokefirered/data/maps/VermilionCity_Gym/scripts.inc",
          "pokefirered/data/maps/VermilionCity/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_ROUTE5_TO_VERMILION_COMPLETE"
  }
}
