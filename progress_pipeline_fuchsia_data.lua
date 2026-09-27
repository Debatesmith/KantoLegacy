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
      "inventory",
      "pcItems",
      "party",
      "pokedex",
      "player"
    },
    ["eventRules"] = {
      {
        ["eventId"] = "FUCHSIA_ARC.POKE_FLUTE_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:poke_flute_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_12",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE12_SNORLAX",
            "itemsTaken.ROUTE_12_obj_9",
            "itemsTaken.ROUTE_12_obj_10",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_5",
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_6"
          }
        },
        ["eventId"] = "VISIT.ROUTE_12",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_12_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE12.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE12.TRAINER_FIRERED_ONLY_0",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE12.SNORLAX_ENCOUNTER",
        ["mode"] = "derived",
        ["value"] = "derive:route12_snorlax"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_12_obj_9"
          }
        },
        ["eventId"] = "ROUTE12.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_12_obj_10"
          }
        },
        ["eventId"] = "ROUTE12.IRON_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_12"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.BIT_GOT_SUPER_ROD",
            "inventory.SUPER_ROD",
            "pcItems.SUPER_ROD"
          }
        },
        ["eventId"] = "ROUTE12.SUPER_ROD_REWARD",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE12.HIDDEN_HYPER_POTION",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE12.HIDDEN_LEFTOVERS",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE12.HIDDEN_RARE_CANDY",
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
            "player.map=ROUTE_13",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_5",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_6",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_7",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_8",
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_9"
          }
        },
        ["eventId"] = "VISIT.ROUTE_13",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_13"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_13_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE13.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE13.HIDDEN_PP_UP",
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
            "player.map=ROUTE_14",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_5",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_6",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_7",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_8",
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_9"
          }
        },
        ["eventId"] = "VISIT.ROUTE_14",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_14"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_14_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE14.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE14.TRAINER_FIRERED_ONLY_0",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE14.HIDDEN_ZINC",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE14.HIDDEN_PINAP_BERRY",
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
            "player.map=ROUTE_15",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_0",
            "itemsTaken.ROUTE_15_obj_11",
            "flags.EVENT_GOT_EXP_ALL",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_5",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_6",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_7",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_8",
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_9"
          }
        },
        ["eventId"] = "VISIT.ROUTE_15",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_15_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE15.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE15.TRAINER_FIRERED_ONLY_0",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_15_obj_11"
          }
        },
        ["eventId"] = "ROUTE15.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_15"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_EXP_ALL",
            "inventory.EXP_ALL",
            "pcItems.EXP_ALL"
          }
        },
        ["eventId"] = "ROUTE15.EXP_SHARE_AIDE_REWARD",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_16",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE16_SNORLAX",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_5"
          }
        },
        ["eventId"] = "VISIT.ROUTE_16",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_16"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_16_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE16.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE16.TRAINER_FIRERED_ONLY_0",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE16.SNORLAX_ENCOUNTER",
        ["mode"] = "derived",
        ["value"] = "derive:route16_snorlax"
      },
      {
        ["eventId"] = "CYCLING_ROAD.BICYCLE_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:bicycle_access"
      },
      {
        ["eventId"] = "ROUTE16.HIDDEN_LEFTOVERS",
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
            "player.map=ROUTE_17",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_2",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_3",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_4",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_5",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_6",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_7",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_8",
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_9"
          }
        },
        ["eventId"] = "VISIT.ROUTE_17",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_17"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_17_TRAINER_9"
          }
        },
        ["eventId"] = "ROUTE17.TRAINER_SHARED_9",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE17.HIDDEN_RARE_CANDY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE17.HIDDEN_FULL_RESTORE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE17.HIDDEN_PP_UP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE17.HIDDEN_MAX_REVIVE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE17.HIDDEN_MAX_ELIXIR",
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
            "player.map=ROUTE_18",
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_0",
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_1",
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_2"
          }
        },
        ["eventId"] = "VISIT.ROUTE_18",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_18"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE18.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_18"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE18.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.ROUTE_18"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_18_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE18.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE18.LICKITUNG_TRADE",
        ["mode"] = "unresolved",
        ["note"] = "Gen 1 stores no durable per-trade completion bit; owning Lickitung is insufficient evidence."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "visited.FUCHSIA_CITY",
            "player.map=FUCHSIA_CITY",
            "flags.EVENT_BEAT_KOGA",
            "flags.EVENT_GOT_HM03",
            "flags.EVENT_GAVE_GOLD_TEETH",
            "flags.EVENT_GOT_HM04"
          }
        },
        ["eventId"] = "VISIT.FUCHSIA_CITY",
        ["mode"] = "visit"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.BIT_GOT_GOOD_ROD",
            "inventory.GOOD_ROD",
            "pcItems.GOOD_ROD"
          }
        },
        ["eventId"] = "FUCHSIA.GOOD_ROD_REWARD",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "FUCHSIA.HIDDEN_MAX_REVIVE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "VISIT.SAFARI_ZONE_CENTER",
        ["mode"] = "derived",
        ["value"] = "derive:safari_visit_center"
      },
      {
        ["eventId"] = "VISIT.SAFARI_ZONE_EAST",
        ["mode"] = "derived",
        ["value"] = "derive:safari_visit_east"
      },
      {
        ["eventId"] = "VISIT.SAFARI_ZONE_NORTH",
        ["mode"] = "derived",
        ["value"] = "derive:safari_visit_north"
      },
      {
        ["eventId"] = "VISIT.SAFARI_ZONE_WEST",
        ["mode"] = "derived",
        ["value"] = "derive:safari_visit_west"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_CENTER"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_CENTER_obj_1"
          }
        },
        ["eventId"] = "SAFARI_ZONE_CENTER.NUGGET_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_EAST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_EAST_obj_1"
          }
        },
        ["eventId"] = "SAFARI_ZONE_EAST.FULL_RESTORE_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_EAST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_EAST_obj_2"
          }
        },
        ["eventId"] = "SAFARI_ZONE_EAST.MAX_POTION_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_EAST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_EAST_obj_3"
          }
        },
        ["eventId"] = "SAFARI_ZONE_EAST.VITAMIN_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_EAST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_EAST_obj_4"
          }
        },
        ["eventId"] = "SAFARI_ZONE_EAST.TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_NORTH_obj_1"
          }
        },
        ["eventId"] = "SAFARI_ZONE_NORTH.PROTEIN_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_NORTH"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_NORTH_obj_2"
          }
        },
        ["eventId"] = "SAFARI_ZONE_NORTH.TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_WEST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_WEST_obj_1"
          }
        },
        ["eventId"] = "SAFARI_ZONE_WEST.MAX_POTION_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_WEST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_WEST_obj_2"
          }
        },
        ["eventId"] = "SAFARI_ZONE_WEST.TM32_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFARI_ZONE_WEST"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SAFARI_ZONE_WEST_obj_3"
          }
        },
        ["eventId"] = "SAFARI_ZONE_WEST.MAX_REVIVE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SAFARI_ZONE.GOLD_TEETH_PICKUP",
        ["mode"] = "derived",
        ["value"] = "derive:gold_teeth"
      },
      {
        ["eventId"] = "SAFARI_ZONE.HM03_SURF_REWARD",
        ["mode"] = "derived",
        ["value"] = "derive:hm03"
      },
      {
        ["eventId"] = "SAFARI_ZONE_CENTER.HIDDEN_LEAF_STONE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SAFARI_ZONE_NORTH.QUICK_CLAW_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SAFARI_ZONE_WEST.HIDDEN_REVIVE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "FUCHSIA.WARDEN_TEETH_RETURNED",
        ["mode"] = "derived",
        ["value"] = "derive:warden_teeth"
      },
      {
        ["eventId"] = "FUCHSIA.HM04_STRENGTH_REWARD",
        ["mode"] = "derived",
        ["value"] = "derive:hm04"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.WARDENS_HOUSE_obj_2"
          }
        },
        ["eventId"] = "FUCHSIA.WARDEN_RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_3"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_4"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.FUCHSIA_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FUCHSIA_GYM_TRAINER_5"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_KOGA"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.KOGA_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_KOGA",
            "inventory.SOULBADGE",
            "pcItems.SOULBADGE"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.SOUL_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM06",
            "inventory.TM_TOXIC",
            "pcItems.TM_TOXIC"
          }
        },
        ["eventId"] = "FUCHSIA_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "FUCHSIA_GYM.KOGA_BATTLE"
        }
      },
      {
        ["eventId"] = "FUCHSIA_ARC.DEPARTURE_READY",
        ["mode"] = "derived",
        ["value"] = "derive:fuchsia_departure"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_POKE_FLUTE_TO_FUCHSIA_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "pokeflute-to-fuchsia.rby.evidence.json",
    ["materialization"] = "pokeflute-to-fuchsia.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "FUCHSIA_ARC.POKE_FLUTE_ACCESS",
        ["notes"] = {
          "This fact is derived from already-owned prerequisite state and has no independent durable target bit."
        },
        ["profile"] = "location_only",
        ["protectedTargets"] = {},
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_12",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_NED"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_CHIP"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CAMPER_JUSTIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_ROCKER_LUCA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_HANK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_ELLIOT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route12/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_FISHERMAN_ANDREW"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE12.TRAINER_FIRERED_ONLY_0",
        ["notes"] = {
          "Both visible partners share one FireRed double-battle defeat bit, so this is one canonical battle role."
        },
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNG_COUPLE_GIA_JES"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE12.SNORLAX_ENCOUNTER",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROUTE12_SNORLAX",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROUTE12_TM48"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.IRON_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROUTE12_IRON"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_SUPER_ROD"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_SUPER_ROD"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_SUPER_ROD"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_SUPER_ROD"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE12.SUPER_ROD_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_SUPER_ROD",
          "ITEM_SUPER_ROD"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE12.HIDDEN_HYPER_POTION",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE12_HYPER_POTION"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE12.HIDDEN_LEFTOVERS",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE12_LEFTOVERS"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE12.HIDDEN_RARE_CANDY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE12_RARE_CANDY"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_13",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_SEBASTIAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_SUSIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_VALERIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_GWEN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_ALMA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_PERRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BEAUTY_LOLA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BEAUTY_SHEILA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_JARED"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE13.TRAINER_SHARED_9",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route13/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_ROBERT"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE13.HIDDEN_PP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE13_PP_UP"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_14",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_CARTER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_MITCH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_BECK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_MARLON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_DONALD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_BENNY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_LUKAS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_ISAAC"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_GERALD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE14.TRAINER_SHARED_9",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route14/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_MALIK"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE14.TRAINER_FIRERED_ONLY_0",
        ["notes"] = {
          "Both visible partners share one FireRed double-battle defeat bit, so this is one canonical battle role."
        },
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_TWINS_KIRI_JAN"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE14.HIDDEN_ZINC",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE14_ZINC"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE14.HIDDEN_PINAP_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE14_PINAP_BERRY"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_15",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_KINDRA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_BECKY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_EDWIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_CHESTER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BEAUTY_GRACE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BEAUTY_OLIVIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_ERNEST"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_ALEX"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_CELIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TRAINER_SHARED_9",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route15/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_YAZMIN"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE15.TRAINER_FIRERED_ONLY_0",
        ["notes"] = {
          "Both visible partners share one FireRed double-battle defeat bit, so this is one canonical battle role."
        },
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CRUSH_KIN_RON_MYA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROUTE15_TM18"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_EXP_SHARE_FROM_OAKS_AIDE"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_EXP_SHARE"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_EXP_SHARE_FROM_OAKS_AIDE"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_EXP_SHARE"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE15.EXP_SHARE_AIDE_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_EXP_SHARE_FROM_OAKS_AIDE",
          "ITEM_EXP_SHARE"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_16",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_LAO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_KOJI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_LUKE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_HIDEO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_CAMRON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route16/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_RUBEN"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE16.TRAINER_FIRERED_ONLY_0",
        ["notes"] = {
          "Both visible partners share one FireRed double-battle defeat bit, so this is one canonical battle role."
        },
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNG_COUPLE_LEA_JED"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE16.SNORLAX_ENCOUNTER",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROUTE16_SNORLAX",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "CYCLING_ROAD.BICYCLE_ACCESS",
        ["notes"] = {
          "This fact is derived from already-owned prerequisite state and has no independent durable target bit."
        },
        ["profile"] = "location_only",
        ["protectedTargets"] = {
          "VAR_MAP_SCENE_ROUTE16"
        },
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE16.HIDDEN_LEFTOVERS",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE16_LEFTOVERS"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_17",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_RAUL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_ISAIAH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_VIRGIL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_BILLY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_NIKOLAS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_ZEEK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_JAMAL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CUE_BALL_COREY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_JAXON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE17.TRAINER_SHARED_9",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route17/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIKER_WILLIAM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE17.HIDDEN_RARE_CANDY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE17_RARE_CANDY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE17.HIDDEN_FULL_RESTORE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE17_FULL_RESTORE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE17.HIDDEN_PP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE17_PP_UP"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE17.HIDDEN_MAX_REVIVE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE17_MAX_REVIVE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE17.HIDDEN_MAX_ELIXIR",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE17_MAX_ELIXIR"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_18",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE18.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route18/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_WILTON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE18.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route18/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_RAMIRO"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE18.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route18/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BIRD_KEEPER_JACOB"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_DID_MARC_TRADE"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_DID_MARC_TRADE"
          }
        },
        ["disposition"] = "external_subsystem",
        ["eventId"] = "ROUTE18.LICKITUNG_TRADE",
        ["notes"] = {
          "A completed trade may commit only when the collection converter supplies the received Lickitung payload; progress never fabricates it."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/Route18_EastEntrance_2F/scripts.inc"
        },
        ["target"] = "FLAG_DID_MARC_TRADE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.FUCHSIA_CITY",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_FUCHSIA_CITY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_GOOD_ROD"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_GOOD_ROD"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_GOOD_ROD"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_GOOD_ROD"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA.GOOD_ROD_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_GOOD_ROD",
          "ITEM_GOOD_ROD"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "FUCHSIA.HIDDEN_MAX_REVIVE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_FUCHSIA_CITY_MAX_REVIVE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.SAFARI_ZONE_CENTER",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_SAFARI_ZONE_CENTER"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SAFARI_ZONE_EAST",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SAFARI_ZONE_NORTH",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SAFARI_ZONE_WEST",
        ["notes"] = {
          "No distinct durable FireRed region-map flag exists for this logical area."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_CENTER.NUGGET_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_CENTER_NUGGET"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_EAST.FULL_RESTORE_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_EAST_FULL_RESTORE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_EAST.MAX_POTION_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_EAST_MAX_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_EAST.VITAMIN_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_EAST_LEAF_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_EAST.TM_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_EAST_TM11"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_NORTH.PROTEIN_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_NORTH_PROTEIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_NORTH.TM_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_NORTH_TM47"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_WEST.MAX_POTION_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_WEST_MAX_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_WEST.TM32_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_WEST_TM32"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE_WEST.MAX_REVIVE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_WEST_MAX_REVIVE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SAFARI_ZONE.GOLD_TEETH_PICKUP",
        ["profile"] = "reducer_input",
        ["reducer"] = "WARDEN_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_HM03"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_HM03"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_HM03"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_HM03"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "SAFARI_ZONE.HM03_SURF_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_HM03",
          "ITEM_HM03"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SAFARI_ZONE_CENTER.HIDDEN_LEAF_STONE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SAFARI_ZONE_CENTER_LEAF_STONE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SAFARI_ZONE_NORTH.QUICK_CLAW_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SAFARI_ZONE_NORTH_QUICK_CLAW"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SAFARI_ZONE_WEST.HIDDEN_REVIVE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SAFARI_ZONE_WEST_REVIVE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FUCHSIA.WARDEN_TEETH_RETURNED",
        ["profile"] = "reducer_input",
        ["reducer"] = "WARDEN_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FUCHSIA.HM04_STRENGTH_REWARD",
        ["profile"] = "reducer_input",
        ["reducer"] = "WARDEN_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA.WARDEN_RARE_CANDY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_FUCHSIA_CITY_WARDENS_HOUSE_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_JUGGLER_KAYDEN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_JUGGLER_KIRK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_JUGGLER_NATE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_TAMER_PHIL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_TAMER_EDGAR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FUCHSIA_GYM.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/map.json",
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_JUGGLER_SHAWN"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FUCHSIA_GYM.KOGA_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "KOGA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FUCHSIA_GYM.SOUL_BADGE",
        ["profile"] = "reducer_input",
        ["reducer"] = "KOGA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FUCHSIA_GYM.TM_REWARD",
        ["profile"] = "reducer_input",
        ["reducer"] = "KOGA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "FUCHSIA_ARC.DEPARTURE_READY",
        ["notes"] = {
          "This fact is derived from already-owned prerequisite state and has no independent durable target bit."
        },
        ["profile"] = "location_only",
        ["protectedTargets"] = {},
        ["references"] = {
          "pokefirered/data/maps"
        }
      }
    },
    ["reducers"] = {
      {
        ["cases"] = {
          {
            ["id"] = "sleeping",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_ROUTE_12_SNORLAX"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_WOKE_UP_ROUTE_12_SNORLAX"
              }
            },
            ["when"] = "SNORLAX_ENCOUNTER.value == sleeping"
          },
          {
            ["id"] = "resolved",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_ROUTE_12_SNORLAX"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_WOKE_UP_ROUTE_12_SNORLAX"
              }
            },
            ["when"] = "SNORLAX_ENCOUNTER.value == resolved_outcome_unknown"
          }
        },
        ["id"] = "ROUTE12_SNORLAX",
        ["inputs"] = {
          "ROUTE12.SNORLAX_ENCOUNTER"
        },
        ["notes"] = {
          "Caught versus defeated is intentionally not guessed; the hidden Leftovers flag is separately owned by its pickup event."
        },
        ["owns"] = {
          "FLAG_HIDE_ROUTE_12_SNORLAX",
          "FLAG_WOKE_UP_ROUTE_12_SNORLAX"
        },
        ["references"] = {
          "pokefirered/data/maps/Route12/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "sleeping",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_ROUTE_16_SNORLAX"
              }
            },
            ["when"] = "SNORLAX_ENCOUNTER.value == sleeping"
          },
          {
            ["id"] = "resolved",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_ROUTE_16_SNORLAX"
              }
            },
            ["when"] = "SNORLAX_ENCOUNTER.value == resolved_outcome_unknown"
          }
        },
        ["id"] = "ROUTE16_SNORLAX",
        ["inputs"] = {
          "ROUTE16.SNORLAX_ENCOUNTER"
        },
        ["notes"] = {
          "VAR_MAP_SCENE_ROUTE16 is cycling-road runtime state and is not used as Snorlax progress."
        },
        ["owns"] = {
          "FLAG_HIDE_ROUTE_16_SNORLAX"
        },
        ["references"] = {
          "pokefirered/data/maps/Route16/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "teeth_available",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFARI_ZONE_WEST_GOLD_TEETH"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_GOLD_TEETH"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HM04"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM04"
              }
            },
            ["when"] = "GOLD_TEETH_PICKUP not completed"
          },
          {
            ["id"] = "teeth_held",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFARI_ZONE_WEST_GOLD_TEETH"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_GOLD_TEETH"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HM04"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM04"
              }
            },
            ["when"] = "GOLD_TEETH_PICKUP completed and WARDEN_TEETH_RETURNED not completed"
          },
          {
            ["id"] = "hm04_pending",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFARI_ZONE_WEST_GOLD_TEETH"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_GOLD_TEETH"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HM04"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM04"
              }
            },
            ["when"] = "WARDEN_TEETH_RETURNED completed and HM04_STRENGTH_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFARI_ZONE_WEST_GOLD_TEETH"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_GOLD_TEETH"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_HM04"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HM04"
              }
            },
            ["when"] = "HM04_STRENGTH_REWARD completed"
          }
        },
        ["id"] = "WARDEN_REWARD",
        ["inputs"] = {
          "SAFARI_ZONE.GOLD_TEETH_PICKUP",
          "FUCHSIA.WARDEN_TEETH_RETURNED",
          "FUCHSIA.HM04_STRENGTH_REWARD"
        },
        ["notes"] = {
          "The explicit pending case preserves a returned-teeth/full-bag state instead of inventing HM04."
        },
        ["owns"] = {
          "FLAG_HIDE_SAFARI_ZONE_WEST_GOLD_TEETH",
          "ITEM_GOLD_TEETH",
          "FLAG_GOT_HM04",
          "ITEM_HM04"
        },
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_WardensHouse/scripts.inc",
          "pokefirered/data/maps/SafariZone_West/map.json"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_KOGA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_KOGA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE05_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM06_FROM_KOGA"
              }
            },
            ["when"] = "KOGA_BATTLE not completed"
          },
          {
            ["id"] = "defeated_tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_KOGA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_KOGA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE05_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM06_FROM_KOGA"
              }
            },
            ["when"] = "KOGA_BATTLE completed and SOUL_BADGE completed and TM_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_KOGA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_KOGA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE05_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM06_FROM_KOGA"
              }
            },
            ["when"] = "KOGA_BATTLE completed and SOUL_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "KOGA_REWARD",
        ["inputs"] = {
          "FUCHSIA_GYM.KOGA_BATTLE",
          "FUCHSIA_GYM.SOUL_BADGE",
          "FUCHSIA_GYM.TM_REWARD"
        },
        ["notes"] = {
          "Koga and Soul Badge are atomic; TM06 may remain pending when the source bag was full."
        },
        ["owns"] = {
          "TRAINER_LEADER_KOGA",
          "FLAG_DEFEATED_KOGA",
          "FLAG_BADGE05_GET",
          "FLAG_GOT_TM06_FROM_KOGA",
          "ITEM_TM06"
        },
        ["references"] = {
          "pokefirered/data/maps/FuchsiaCity_Gym/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_POKE_FLUTE_TO_FUCHSIA_COMPLETE"
  }
}
