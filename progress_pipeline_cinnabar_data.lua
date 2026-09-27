-- Generated; edit the reviewed JSON tables and rerun the exporter.
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
      "player"
    },
    ["eventRules"] = {
      {
        ["eventId"] = "VISIT.ROUTE_19",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.ROUTE_20",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.ROUTE_21_NORTH",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.ROUTE_21_SOUTH",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POWER_PLANT",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_ISLAND",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_1F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B1F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B2F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B3F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B4F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_POKEMON_CENTER",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_MART",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_LAB_ENTRANCE",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_LAB_LOUNGE",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_LAB_RESEARCH_ROOM",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_LAB_EXPERIMENT_ROOM",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_MANSION_1F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_MANSION_2F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_MANSION_3F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.POKEMON_MANSION_B1F",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["eventId"] = "VISIT.CINNABAR_GYM",
        ["mode"] = "derived",
        ["value"] = "derive:visit"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_19"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_19_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE19.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_20"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_20_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE20.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_21_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_21_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE21.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM1_BOULDER1_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM1_BOULDER2_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM2_BOULDER1_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM2_BOULDER2_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM3_BOULDER1_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM3_BOULDER2_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE"
          }
        },
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_4",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SEAFOAM.B3F_CURRENT_STOPPED",
        ["mode"] = "derived",
        ["value"] = "derive:seafoam_b3"
      },
      {
        ["eventId"] = "SEAFOAM.B4F_CURRENT_STOPPED",
        ["mode"] = "derived",
        ["value"] = "derive:seafoam_b4"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ARTICUNO"
          }
        },
        ["eventId"] = "SEAFOAM.ARTICUNO_RESOLVED",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SEAFOAM_1F.ICE_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B1F.WATER_STONE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B1F.REVIVE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B2F.BIG_PEARL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B4F.ULTRA_BALL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B3F.HIDDEN_NUGGET",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SEAFOAM_B4F.HIDDEN_WATER_STONE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_0"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_1"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_2"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_3"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_4"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_5"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_6"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POWER_PLANT_VOLTORB_7"
          }
        },
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ZAPDOS"
          }
        },
        ["eventId"] = "POWER_PLANT.ZAPDOS_RESOLVED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POWER_PLANT_obj_10"
          }
        },
        ["eventId"] = "POWER_PLANT.CARBOS_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POWER_PLANT_obj_11"
          }
        },
        ["eventId"] = "POWER_PLANT.HP_UP_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POWER_PLANT_obj_12"
          }
        },
        ["eventId"] = "POWER_PLANT.RARE_CANDY_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POWER_PLANT_obj_13"
          }
        },
        ["eventId"] = "POWER_PLANT.THUNDER_TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POWER_PLANT"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POWER_PLANT_obj_14"
          }
        },
        ["eventId"] = "POWER_PLANT.REFLECT_TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "POWER_PLANT.HIDDEN_MAX_ELIXIR",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "POWER_PLANT.HIDDEN_THUNDER_STONE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_1_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_MANSION_1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_2_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_MANSION_2F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_3_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_MANSION_3F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_3_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_MANSION_3F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_4_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_MANSION_B1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MANSION_4_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_MANSION_B1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_MANSION_SWITCH_ON"
          }
        },
        ["eventId"] = "POKEMON_MANSION.SWITCH_RUNTIME",
        ["mode"] = "transient",
        ["normalization"] = "reset_available"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_1F_obj_2"
          }
        },
        ["eventId"] = "MANSION_1F.ESCAPE_ROPE_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_1F_obj_3"
          }
        },
        ["eventId"] = "MANSION_1F.CARBOS_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_2F_obj_2"
          }
        },
        ["eventId"] = "MANSION_2F.CALCIUM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_3F_obj_3"
          }
        },
        ["eventId"] = "MANSION_3F.MAX_POTION_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_3F_obj_4"
          }
        },
        ["eventId"] = "MANSION_3F.IRON_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_B1F_obj_3"
          }
        },
        ["eventId"] = "MANSION_B1F.RARE_CANDY_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_B1F_obj_4"
          }
        },
        ["eventId"] = "MANSION_B1F.FULL_RESTORE_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_B1F_obj_5"
          }
        },
        ["eventId"] = "MANSION_B1F.TM_BLIZZARD_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.POKEMON_MANSION_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_MANSION_B1F_obj_6"
          }
        },
        ["eventId"] = "MANSION_B1F.TM_SOLARBEAM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "POKEMON_MANSION.SECRET_KEY",
        ["mode"] = "derived",
        ["value"] = "derive:secret_key"
      },
      {
        ["eventId"] = "MANSION_1F.PROTEIN",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MANSION_2F.ZINC",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MANSION_2F.HP_UP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MANSION_1F.HIDDEN_MOON_STONE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MANSION_3F.HIDDEN_RARE_CANDY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MANSION_B1F.HIDDEN_ELIXIR",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "CINNABAR_LAB.HELIX_REVIVAL",
        ["mode"] = "derived",
        ["value"] = "derive:fossil_helix"
      },
      {
        ["eventId"] = "CINNABAR_LAB.DOME_REVIVAL",
        ["mode"] = "derived",
        ["value"] = "derive:fossil_dome"
      },
      {
        ["eventId"] = "CINNABAR_LAB.AMBER_REVIVAL",
        ["mode"] = "derived",
        ["value"] = "derive:fossil_amber"
      },
      {
        ["eventId"] = "CINNABAR_LAB.SEELOR_TRADE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "CINNABAR_LAB.ESPHERE_TRADE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "CINNABAR_LAB.TANGENY_TRADE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_3"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_4"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_5"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CINNABAR_GYM"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CINNABAR_GYM_TRAINER_6"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE0_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE1_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE2_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE3_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE4_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_CINNABAR_GYM_GATE5_UNLOCKED"
          }
        },
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_MANSION.SECRET_KEY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_BLAINE"
          }
        },
        ["eventId"] = "CINNABAR_GYM.BLAINE_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_BLAINE",
            "inventory.VOLCANOBADGE",
            "pcItems.VOLCANOBADGE"
          }
        },
        ["eventId"] = "CINNABAR_GYM.VOLCANO_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM38",
            "inventory.TM_FIRE_BLAST",
            "pcItems.TM_FIRE_BLAST"
          }
        },
        ["eventId"] = "CINNABAR_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "CINNABAR_GYM.BLAINE_BATTLE"
        }
      },
      {
        ["eventId"] = "CINNABAR.BILL_SEVII_INVITATION",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "CINNABAR_ARC.DEPARTURE_READY",
        ["mode"] = "derived",
        ["value"] = "derive:cinnabar_departure"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_SEAFOAM_POWER_PLANT_CINNABAR_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "cinnabar.rby.evidence.json",
    ["materialization"] = "cinnabar.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_19",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_20",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_21_NORTH",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_21_SOUTH",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.POWER_PLANT",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_POWER_PLANT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.CINNABAR_ISLAND",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_CINNABAR_ISLAND"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_1F",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_SEAFOAM_ISLANDS_1F"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B1F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B2F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B3F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SEAFOAM_ISLANDS_B4F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_POKEMON_CENTER",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_MART",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_LAB_ENTRANCE",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_LAB_LOUNGE",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_LAB_RESEARCH_ROOM",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_LAB_EXPERIMENT_ROOM",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.POKEMON_MANSION_1F",
        ["profile"] = "visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_POKEMON_MANSION_1F"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_MANSION_2F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_MANSION_3F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.POKEMON_MANSION_B1F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CINNABAR_GYM",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_RICHARD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_REECE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_MATTHEW"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_DOUGLAS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_DAVID"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_5",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_TONY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_6",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_AXLE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_7",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_ANYA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_8",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_ALICE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE19.TRAINER_SHARED_9",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_CONNIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_BARRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_DEAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_DARRIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_TIFFANY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_NORA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_5",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_MELISSA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_6",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_FEMALE_SHIRLEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_7",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_ROGER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_8",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_PICNICKER_MISSY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE20.TRAINER_SHARED_9",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_PICNICKER_IRENE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_FISHERMAN_RONALD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_FISHERMAN_CLAUDE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_FISHERMAN_WADE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_FISHERMAN_NOLAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_SPENCER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_5",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_JACK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_6",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_JEROME"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_7",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_ROLAND"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE21.TRAINER_SHARED_8",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SIS_AND_BRO_LIL_IAN"
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_1",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_1",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_2",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_2",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_3",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_3",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_1_STAGE_4",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "SEAFOAM.BOULDER_2_STAGE_4",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SEAFOAM.B3F_CURRENT_STOPPED",
        ["profile"] = "reducer",
        ["reducer"] = "SEAFOAM_CURRENTS",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SEAFOAM.B4F_CURRENT_STOPPED",
        ["profile"] = "reducer",
        ["reducer"] = "SEAFOAM_CURRENTS",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_ARTICUNO"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_ARTICUNO"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_ARTICUNO"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_ARTICUNO"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "SEAFOAM.ARTICUNO_RESOLVED",
        ["profile"] = "legendary",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_FOUGHT_ARTICUNO",
          "FLAG_HIDE_ARTICUNO"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_1F.ICE_HEAL",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SEAFOAM_ISLANDS_1F_ICE_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B1F.WATER_STONE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SEAFOAM_ISLANDS_B1F_WATER_STONE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B1F.REVIVE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SEAFOAM_ISLANDS_B1F_REVIVE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B2F.BIG_PEARL",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SEAFOAM_ISLANDS_B2F_BIG_PEARL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B4F.ULTRA_BALL",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SEAFOAM_ISLANDS_B4F_ULTRA_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B3F.HIDDEN_NUGGET",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SEAFOAM_ISLANDS_B3F_NUGGET"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SEAFOAM_B4F.HIDDEN_WATER_STONE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SEAFOAM_ISLANDS_B4F_WATER_STONE"
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_0",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_1",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_2",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_1"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_POWER_PLANT_ELECTRODE_1"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_1"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_POWER_PLANT_ELECTRODE_1"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_3",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_1",
          "FLAG_HIDE_POWER_PLANT_ELECTRODE_1"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_4",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_5",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_2"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_POWER_PLANT_ELECTRODE_2"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_2"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_POWER_PLANT_ELECTRODE_2"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_6",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_FOUGHT_POWER_PLANT_ELECTRODE_2",
          "FLAG_HIDE_POWER_PLANT_ELECTRODE_2"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "POWER_PLANT.STATIC_ENCOUNTER_7",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_ZAPDOS"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_ZAPDOS"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_ZAPDOS"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_ZAPDOS"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.ZAPDOS_RESOLVED",
        ["profile"] = "legendary",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_FOUGHT_ZAPDOS",
          "FLAG_HIDE_ZAPDOS"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.CARBOS_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POWER_PLANT_MAX_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.HP_UP_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POWER_PLANT_TM17"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.RARE_CANDY_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POWER_PLANT_TM25"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.THUNDER_TM_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POWER_PLANT_THUNDER_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POWER_PLANT.REFLECT_TM_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POWER_PLANT_ELIXIR"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "POWER_PLANT.HIDDEN_MAX_ELIXIR",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POWER_PLANT_MAX_ELIXIR"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "POWER_PLANT.HIDDEN_THUNDER_STONE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POWER_PLANT_THUNDER_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_1F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SCIENTIST_TED"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_2F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_ARNIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_3F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_SIMON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_3F.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SCIENTIST_BRAYDON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_B1F.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_LEWIS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION_B1F.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SCIENTIST_IVAN"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_POKEMON_MANSION_SWITCH_STATE"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION.SWITCH_RUNTIME",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_POKEMON_MANSION_SWITCH_STATE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_1F.ESCAPE_ROPE_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_1F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_1F.CARBOS_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_1F_CARBOS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_2F.CALCIUM_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_2F_CALCIUM"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_3F.MAX_POTION_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_3F_MAX_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_3F.IRON_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_3F_IRON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_B1F.RARE_CANDY_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_B1F_TM14"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_B1F.FULL_RESTORE_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_B1F_FULL_RESTORE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MANSION_B1F.TM_BLIZZARD_ROLE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_B1F_TM22"
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "MANSION_B1F.TM_SOLARBEAM_ROLE",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_POKEMON_MANSION_B1F_SECRET_KEY"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_SECRET_KEY"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_POKEMON_MANSION_B1F_SECRET_KEY"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_SECRET_KEY"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_MANSION.SECRET_KEY",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_HIDE_POKEMON_MANSION_B1F_SECRET_KEY",
          "ITEM_SECRET_KEY"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_1F.PROTEIN",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_1F_PROTEIN"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_2F.ZINC",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_2F_ZINC"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_2F.HP_UP",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_MANSION_2F_HP_UP"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_1F.HIDDEN_MOON_STONE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POKEMON_MANSION_1F_MOON_STONE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_3F.HIDDEN_RARE_CANDY",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POKEMON_MANSION_3F_RARE_CANDY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MANSION_B1F.HIDDEN_ELIXIR",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POKEMON_MANSION_B1F_ELIXIR"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_REVIVED_HELIX"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_HELIX_FOSSIL"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_REVIVED_HELIX"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_HELIX_FOSSIL"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_LAB.HELIX_REVIVAL",
        ["profile"] = "fossil",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_REVIVED_HELIX",
          "ITEM_HELIX_FOSSIL"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_REVIVED_DOME"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_DOME_FOSSIL"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_REVIVED_DOME"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_DOME_FOSSIL"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_LAB.DOME_REVIVAL",
        ["profile"] = "fossil",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_REVIVED_DOME",
          "ITEM_DOME_FOSSIL"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_REVIVED_AMBER"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_OLD_AMBER"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_REVIVED_AMBER"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_OLD_AMBER"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_LAB.AMBER_REVIVAL",
        ["profile"] = "fossil",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["targets"] = {
          "FLAG_REVIVED_AMBER",
          "ITEM_OLD_AMBER"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "CINNABAR_LAB.SEELOR_TRADE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_DID_SEELOR_TRADE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "CINNABAR_LAB.ESPHERE_TRADE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_DID_ESPHERE_TRADE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "CINNABAR_LAB.TANGENY_TRADE",
        ["profile"] = "target_default",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_DID_TANGENY_TRADE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SUPER_NERD_ERIK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SUPER_NERD_AVERY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SUPER_NERD_DEREK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_3",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_SUPER_NERD_ZAC"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_4",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_QUINN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_5",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_RAMON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.TRAINER_SHARED_6",
        ["profile"] = "trainer",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "TRAINER_BURGLAR_DUSTY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_1",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_2",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_3",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_3"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_4",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_4"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_5",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_5"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CINNABAR_GYM.QUIZ_DOOR_6",
        ["profile"] = "flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_CINNABAR_GYM_QUIZ_6"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CINNABAR_GYM.BLAINE_BATTLE",
        ["profile"] = "reducer",
        ["reducer"] = "BLAINE_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CINNABAR_GYM.VOLCANO_BADGE",
        ["profile"] = "reducer",
        ["reducer"] = "BLAINE_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CINNABAR_GYM.TM_REWARD",
        ["profile"] = "reducer",
        ["reducer"] = "BLAINE_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CINNABAR.BILL_SEVII_INVITATION",
        ["profile"] = "reducer",
        ["reducer"] = "BLAINE_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "CINNABAR_ARC.DEPARTURE_READY",
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
            ["id"] = "none",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B3F_CURRENT"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B4F_CURRENT"
              }
            },
            ["when"] = "B3F_CURRENT_STOPPED not completed and B4F_CURRENT_STOPPED not completed"
          },
          {
            ["id"] = "b3",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B3F_CURRENT"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B4F_CURRENT"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_1F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_1F_BOULDER_2"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B1F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B1F_BOULDER_2"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B2F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B2F_BOULDER_2"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_1"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_2"
              }
            },
            ["when"] = "B3F_CURRENT_STOPPED completed and B4F_CURRENT_STOPPED not completed"
          },
          {
            ["id"] = "both",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B3F_CURRENT"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_STOPPED_SEAFOAM_B4F_CURRENT"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_1F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_1F_BOULDER_2"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B1F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B1F_BOULDER_2"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B2F_BOULDER_1"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B2F_BOULDER_2"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_3"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_4"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_5"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_6"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_1"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B3F_BOULDER_2"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B4F_BOULDER_1"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SEAFOAM_B4F_BOULDER_2"
              }
            },
            ["when"] = "B3F_CURRENT_STOPPED completed and B4F_CURRENT_STOPPED completed"
          }
        },
        ["id"] = "SEAFOAM_CURRENTS",
        ["inputs"] = {
          "SEAFOAM.B3F_CURRENT_STOPPED",
          "SEAFOAM.B4F_CURRENT_STOPPED"
        },
        ["owns"] = {
          "FLAG_STOPPED_SEAFOAM_B3F_CURRENT",
          "FLAG_STOPPED_SEAFOAM_B4F_CURRENT",
          "FLAG_HIDE_SEAFOAM_1F_BOULDER_1",
          "FLAG_HIDE_SEAFOAM_1F_BOULDER_2",
          "FLAG_HIDE_SEAFOAM_B1F_BOULDER_1",
          "FLAG_HIDE_SEAFOAM_B1F_BOULDER_2",
          "FLAG_HIDE_SEAFOAM_B2F_BOULDER_1",
          "FLAG_HIDE_SEAFOAM_B2F_BOULDER_2",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_1",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_2",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_3",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_4",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_5",
          "FLAG_HIDE_SEAFOAM_B3F_BOULDER_6",
          "FLAG_HIDE_SEAFOAM_B4F_BOULDER_1",
          "FLAG_HIDE_SEAFOAM_B4F_BOULDER_2"
        },
        ["references"] = {
          "pokefirered/data/maps/SeafoamIslands_B3F/scripts.inc",
          "pokefirered/data/maps/SeafoamIslands_B4F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_BLAINE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_BLAINE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE07_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM38_FROM_BLAINE"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CINNABAR_ISLAND",
                ["value"] = 0
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_CINNABAR_BILL"
              }
            },
            ["when"] = "BLAINE_BATTLE not completed"
          },
          {
            ["id"] = "tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_BLAINE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BLAINE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE07_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM38_FROM_BLAINE"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CINNABAR_ISLAND",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CINNABAR_BILL"
              }
            },
            ["when"] = "BLAINE_BATTLE completed and VOLCANO_BADGE completed and TM_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_BLAINE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_BLAINE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE07_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM38_FROM_BLAINE"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CINNABAR_ISLAND",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CINNABAR_BILL"
              }
            },
            ["when"] = "BLAINE_BATTLE completed and VOLCANO_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "BLAINE_REWARD",
        ["inputs"] = {
          "CINNABAR_GYM.BLAINE_BATTLE",
          "CINNABAR_GYM.VOLCANO_BADGE",
          "CINNABAR_GYM.TM_REWARD",
          "CINNABAR.BILL_SEVII_INVITATION"
        },
        ["owns"] = {
          "TRAINER_LEADER_BLAINE",
          "FLAG_DEFEATED_BLAINE",
          "FLAG_BADGE07_GET",
          "FLAG_GOT_TM38_FROM_BLAINE",
          "ITEM_TM38",
          "VAR_MAP_SCENE_CINNABAR_ISLAND",
          "FLAG_HIDE_CINNABAR_BILL"
        },
        ["references"] = {
          "pokefirered/data/maps/CinnabarIsland_Gym/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_SEAFOAM_POWER_PLANT_CINNABAR_COMPLETE"
  },
  ["runtimeIds"] = {
    ["items"] = {
      ["ITEM_DOME_FOSSIL"] = 358,
      ["ITEM_HELIX_FOSSIL"] = 357,
      ["ITEM_OLD_AMBER"] = 354,
      ["ITEM_SECRET_KEY"] = 351
    },
    ["trainers"] = {
      ["TRAINER_BIRD_KEEPER_ROGER"] = 310,
      ["TRAINER_BURGLAR_ARNIE"] = 216,
      ["TRAINER_BURGLAR_DUSTY"] = 215,
      ["TRAINER_BURGLAR_LEWIS"] = 219,
      ["TRAINER_BURGLAR_QUINN"] = 213,
      ["TRAINER_BURGLAR_RAMON"] = 214,
      ["TRAINER_BURGLAR_SIMON"] = 218,
      ["TRAINER_FISHERMAN_CLAUDE"] = 230,
      ["TRAINER_FISHERMAN_NOLAN"] = 232,
      ["TRAINER_FISHERMAN_RONALD"] = 229,
      ["TRAINER_FISHERMAN_WADE"] = 231,
      ["TRAINER_LEADER_BLAINE"] = 419,
      ["TRAINER_PICNICKER_IRENE"] = 473,
      ["TRAINER_PICNICKER_MISSY"] = 472,
      ["TRAINER_SCIENTIST_BRAYDON"] = 346,
      ["TRAINER_SCIENTIST_IVAN"] = 347,
      ["TRAINER_SCIENTIST_TED"] = 335,
      ["TRAINER_SIS_AND_BRO_LIL_IAN"] = 491,
      ["TRAINER_SUPER_NERD_AVERY"] = 178,
      ["TRAINER_SUPER_NERD_DEREK"] = 179,
      ["TRAINER_SUPER_NERD_ERIK"] = 177,
      ["TRAINER_SUPER_NERD_ZAC"] = 180,
      ["TRAINER_SWIMMER_FEMALE_ALICE"] = 277,
      ["TRAINER_SWIMMER_FEMALE_ANYA"] = 276,
      ["TRAINER_SWIMMER_FEMALE_CONNIE"] = 278,
      ["TRAINER_SWIMMER_FEMALE_MELISSA"] = 272,
      ["TRAINER_SWIMMER_FEMALE_NORA"] = 271,
      ["TRAINER_SWIMMER_FEMALE_SHIRLEY"] = 279,
      ["TRAINER_SWIMMER_FEMALE_TIFFANY"] = 270,
      ["TRAINER_SWIMMER_MALE_AXLE"] = 241,
      ["TRAINER_SWIMMER_MALE_BARRY"] = 242,
      ["TRAINER_SWIMMER_MALE_DARRIN"] = 244,
      ["TRAINER_SWIMMER_MALE_DAVID"] = 239,
      ["TRAINER_SWIMMER_MALE_DEAN"] = 243,
      ["TRAINER_SWIMMER_MALE_DOUGLAS"] = 238,
      ["TRAINER_SWIMMER_MALE_JACK"] = 246,
      ["TRAINER_SWIMMER_MALE_JEROME"] = 247,
      ["TRAINER_SWIMMER_MALE_MATTHEW"] = 237,
      ["TRAINER_SWIMMER_MALE_REECE"] = 236,
      ["TRAINER_SWIMMER_MALE_RICHARD"] = 235,
      ["TRAINER_SWIMMER_MALE_ROLAND"] = 248,
      ["TRAINER_SWIMMER_MALE_SPENCER"] = 245,
      ["TRAINER_SWIMMER_MALE_TONY"] = 240
    }
  }
}
