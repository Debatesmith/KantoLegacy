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
        ["eventId"] = "SAFFRON_ARC.CITY_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:saffron_access"
      },
      {
        ["eventId"] = "VISIT.SAFFRON_CITY",
        ["mode"] = "derived",
        ["value"] = "derive:saffron_visit"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM29",
            "inventory.TM_PSYCHIC_M",
            "pcItems.TM_PSYCHIC_M"
          }
        },
        ["eventId"] = "SAFFRON.MR_PSYCHIC_REWARD",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM31",
            "inventory.TM_MIMIC",
            "pcItems.TM_MIMIC"
          }
        },
        ["eventId"] = "SAFFRON.COPYCAT_REWARD",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SAFFRON.COPYCAT_HIDDEN_NUGGET",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FIGHTING_DOJO_TRAINER_0"
          }
        },
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FIGHTING_DOJO_TRAINER_1"
          }
        },
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FIGHTING_DOJO_TRAINER_2"
          }
        },
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_FIGHTING_DOJO_TRAINER_3"
          }
        },
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_KARATE_MASTER"
          }
        },
        ["eventId"] = "FIGHTING_DOJO.KARATE_MASTER_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "FIGHTING_DOJO.HITMON_GIFT",
        ["mode"] = "choice",
        ["value"] = "derive:hitmon_choice"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_1F",
            "flags.EVENT_SILPH_CO_RECEPTIONIST_AT_DESK"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_1F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_2F",
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_2",
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_3",
            "flags.EVENT_SILPH_CO_2_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_2_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_2F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_3F",
            "flags.EVENT_BEAT_SILPH_CO_3F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_3F_TRAINER_1",
            "flags.EVENT_SILPH_CO_3_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_3_UNLOCKED_DOOR2",
            "itemsTaken.SILPH_CO_3F_obj_4"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_3F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_4F",
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_2",
            "flags.EVENT_SILPH_CO_4_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_4_UNLOCKED_DOOR2",
            "itemsTaken.SILPH_CO_4F_obj_5",
            "itemsTaken.SILPH_CO_4F_obj_6",
            "itemsTaken.SILPH_CO_4F_obj_7"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_4F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_5F",
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_2",
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_3",
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR2",
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR3",
            "itemsTaken.SILPH_CO_5F_obj_6",
            "itemsTaken.SILPH_CO_5F_obj_7"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_5F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_6F",
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_2",
            "flags.EVENT_SILPH_CO_6_UNLOCKED_DOOR",
            "itemsTaken.SILPH_CO_6F_obj_9",
            "itemsTaken.SILPH_CO_6F_obj_10"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_6F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_7F",
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_2",
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_3",
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR2",
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR3",
            "itemsTaken.SILPH_CO_7F_obj_10",
            "itemsTaken.SILPH_CO_7F_obj_11"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_7F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_8F",
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_2",
            "flags.EVENT_SILPH_CO_8_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_8F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_9F",
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_2",
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR1",
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR2",
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR3",
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR4"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_9F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_10F",
            "flags.EVENT_BEAT_SILPH_CO_10F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_10F_TRAINER_1",
            "flags.EVENT_SILPH_CO_10_UNLOCKED_DOOR",
            "itemsTaken.SILPH_CO_10F_obj_4",
            "itemsTaken.SILPH_CO_10F_obj_5",
            "itemsTaken.SILPH_CO_10F_obj_6"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_10F",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=SILPH_CO_11F",
            "flags.EVENT_BEAT_SILPH_CO_11F_TRAINER_0",
            "flags.EVENT_BEAT_SILPH_CO_11F_TRAINER_1",
            "flags.EVENT_BEAT_SILPH_CO_11F_JESSIE_JAMES",
            "flags.EVENT_SILPH_CO_11_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "VISIT.SILPH_CO_11F",
        ["mode"] = "derived"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_2F_TRAINER_3"
          }
        },
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_3F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_3F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_3F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_3F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_4F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_5F_TRAINER_3"
          }
        },
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_6F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_6F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_6F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_6F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_7F_TRAINER_3"
          }
        },
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_8F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_8F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_8F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_8F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_9F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_9F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_9F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_9F_TRAINER_2"
          }
        },
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_10F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_10F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_10F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_10F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_10F_TRAINER_1"
          }
        },
        ["eventId"] = "SILPH_CO_10F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_11F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_11F_TRAINER_0"
          }
        },
        ["eventId"] = "SILPH_CO_11F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_11F"
        },
        ["completedAny"] = {
          ["blue"] = {
            "flags.EVENT_BEAT_SILPH_CO_11F_TRAINER_1"
          },
          ["red"] = {
            "flags.EVENT_BEAT_SILPH_CO_11F_TRAINER_1"
          },
          ["yellow"] = {
            "flags.EVENT_BEAT_SILPH_CO_11F_JESSIE_JAMES"
          }
        },
        ["eventId"] = "SILPH_CO_11F.TRAINER_VERSION_ROLE_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_2_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_2F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_2_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_2F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_3_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_3F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_3_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_3F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_4_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_4F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_4_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_4F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_5_UNLOCKED_DOOR3"
          }
        },
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_6_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "SILPH_CO_6F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_7_UNLOCKED_DOOR3"
          }
        },
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_8_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "SILPH_CO_8F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR1"
          }
        },
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR2"
          }
        },
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR3"
          }
        },
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_9_UNLOCKED_DOOR4"
          }
        },
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_10_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "SILPH_CO_10F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.CARD_KEY_PICKUP"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_SILPH_CO_11_UNLOCKED_DOOR"
          }
        },
        ["eventId"] = "SILPH_CO_11F.CARD_KEY_DOOR_1",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SILPH_CO.CARD_KEY_PICKUP",
        ["mode"] = "derived",
        ["value"] = "derive:card_key"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM36",
            "inventory.TM_SELFDESTRUCT",
            "pcItems.TM_SELFDESTRUCT"
          }
        },
        ["eventId"] = "SILPH_CO_2F.TM_REWARD",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_RIVAL"
          }
        },
        ["eventId"] = "SILPH_CO.RIVAL_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_LAPRAS"
          }
        },
        ["eventId"] = "SILPH_CO.LAPRAS_GIFT",
        ["mode"] = "exact",
        ["note"] = "Gen1Recomp exposes the RBY BIT_GOT_LAPRAS status bit as EVENT_GOT_LAPRAS in decoded saves.",
        ["pendingAfter"] = {
          "SILPH_CO.RIVAL_BATTLE"
        }
      },
      {
        ["availableAfter"] = {
          "SILPH_CO.RIVAL_BATTLE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SILPH_CO_GIOVANNI"
          }
        },
        ["eventId"] = "SILPH_CO.GIOVANNI_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SILPH_CO.CLEARED",
        ["mode"] = "derived",
        ["value"] = "derive:silph_clear"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_MASTER_BALL",
            "inventory.MASTER_BALL",
            "pcItems.MASTER_BALL"
          }
        },
        ["eventId"] = "SILPH_CO.MASTER_BALL_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "SILPH_CO.CLEARED"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_3F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_3F_obj_4"
          }
        },
        ["eventId"] = "SILPH_CO_3F.HYPER_POTION_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_4F_obj_5"
          }
        },
        ["eventId"] = "SILPH_CO_4F.FULL_HEAL_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_4F_obj_6"
          }
        },
        ["eventId"] = "SILPH_CO_4F.MAX_REVIVE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_4F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_4F_obj_7"
          }
        },
        ["eventId"] = "SILPH_CO_4F.ESCAPE_ROPE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_5F_obj_6"
          }
        },
        ["eventId"] = "SILPH_CO_5F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_5F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_5F_obj_7"
          }
        },
        ["eventId"] = "SILPH_CO_5F.PROTEIN_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_6F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_6F_obj_9"
          }
        },
        ["eventId"] = "SILPH_CO_6F.HP_UP_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_6F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_6F_obj_10"
          }
        },
        ["eventId"] = "SILPH_CO_6F.X_ITEM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_7F_obj_10"
          }
        },
        ["eventId"] = "SILPH_CO_7F.CALCIUM_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_7F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_7F_obj_11"
          }
        },
        ["eventId"] = "SILPH_CO_7F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_10F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_10F_obj_4"
          }
        },
        ["eventId"] = "SILPH_CO_10F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_10F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_10F_obj_5"
          }
        },
        ["eventId"] = "SILPH_CO_10F.RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SILPH_CO_10F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.SILPH_CO_10F_obj_6"
          }
        },
        ["eventId"] = "SILPH_CO_10F.CARBOS_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "SILPH_CO_4F.TM41_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_8F.IRON_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_11F.ZINC_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_2F.HIDDEN_ULTRA_BALL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_3F.HIDDEN_PROTEIN",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_4F.HIDDEN_IRON",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_5F.HIDDEN_PP_UP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_6F.HIDDEN_CARBOS",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_7F.HIDDEN_ZINC",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_8F.HIDDEN_NUGGET",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_9F.HIDDEN_CALCIUM",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_10F.HIDDEN_HP_UP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "SILPH_CO_11F.HIDDEN_REVIVE",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_3"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_4"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_5"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SAFFRON_GYM_TRAINER_6"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.SAFFRON_CITY"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SABRINA"
          }
        },
        ["eventId"] = "SAFFRON_GYM.SABRINA_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_SABRINA",
            "inventory.MARSHBADGE",
            "pcItems.MARSHBADGE"
          }
        },
        ["eventId"] = "SAFFRON_GYM.MARSH_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM46",
            "inventory.TM_PSYWAVE",
            "pcItems.TM_PSYWAVE"
          }
        },
        ["eventId"] = "SAFFRON_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "SAFFRON_GYM.SABRINA_BATTLE"
        }
      },
      {
        ["eventId"] = "SAFFRON_ARC.DEPARTURE_READY",
        ["mode"] = "derived",
        ["value"] = "derive:saffron_departure"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_SAFFRON_ARC_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "saffron.rby.evidence.json",
    ["materialization"] = "saffron.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "SAFFRON_ARC.CITY_ACCESS",
        ["notes"] = {
          "Slice 4 owns the Tea/gate normalization; Saffron consumes it without rewriting it."
        },
        ["profile"] = "location_only",
        ["protectedTargets"] = {
          "FLAG_GOT_TEA",
          "VAR_MAP_SCENE_ROUTE5_ROUTE6_ROUTE7_ROUTE8_GATES"
        },
        ["references"] = {
          "pokefirered/data/maps/SaffronCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.SAFFRON_CITY",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_SAFFRON_CITY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_TM29_FROM_MR_PSYCHIC"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_TM29_FROM_MR_PSYCHIC"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON.MR_PSYCHIC_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_TM29_FROM_MR_PSYCHIC",
          "ITEM_TM29"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON.COPYCAT_REWARD",
        ["profile"] = "tutor_flag",
        ["references"] = {
          "pokefirered/data/scripts/move_tutors.inc"
        },
        ["target"] = "FLAG_TUTOR_MIMIC"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SAFFRON.COPYCAT_HIDDEN_NUGGET",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SAFFRON_CITY_COPYCATS_HOUSE_2F_NUGGET"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Dojo/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_HITOSHI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Dojo/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_HIDEKI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Dojo/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_AARON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "FIGHTING_DOJO.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Dojo/scripts.inc"
        },
        ["target"] = "TRAINER_BLACK_BELT_MIKE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FIGHTING_DOJO.KARATE_MASTER_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "DOJO_HITMON",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "FIGHTING_DOJO.HITMON_GIFT",
        ["profile"] = "reducer_input",
        ["reducer"] = "DOJO_HITMON",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_1F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_1F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_2F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_3F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_3F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_4F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_5F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_6F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_6F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_7F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_8F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_8F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_9F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_10F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_10F/map.json"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.SILPH_CO_11F",
        ["notes"] = {
          "FireRed has no distinct durable region-map flag for this floor."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_CONNOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_JERRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_23"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_24"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_3F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_3F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_25"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_3F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_3F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_JOSE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_26"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_RODNEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_27"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_28"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_BEAU"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "TRAINER_JUGGLER_DALTON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_29"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_6F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_30"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_6F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_TAYLOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_6F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_31"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_33"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_JOSHUA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_34"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_35"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_8F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_32"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_8F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_PARKER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_8F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_8F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_36"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_37"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_ED"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_38"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_10F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_39"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_10F/scripts.inc"
        },
        ["target"] = "TRAINER_SCIENTIST_TRAVIS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_11F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_41"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_11F.TRAINER_VERSION_ROLE_1",
        ["notes"] = {
          "R/B's second Rocket and Yellow's Jessie/James occupy FireRed's right-side guard battle role."
        },
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_40"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_2F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_2F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_2F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_3F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_3F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_3F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_3F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_3F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_3F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_4F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_4F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_4F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_5F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_5F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.CARD_KEY_DOOR_3",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_5F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_5F_DOOR_3"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_6F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_6F_DOOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_7F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_7F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.CARD_KEY_DOOR_3",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_7F_DOOR_3"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_8F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_8F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_8F_DOOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_9F_DOOR_1"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_2",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_9F_DOOR_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_3",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_9F_DOOR_3"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_9F.CARD_KEY_DOOR_4",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_9F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_9F_DOOR_4"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_10F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_10F_DOOR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_11F.CARD_KEY_DOOR_1",
        ["profile"] = "door_flag",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/scripts.inc"
        },
        ["target"] = "FLAG_SILPH_11F_DOOR"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_SILPH_CO_5F_CARD_KEY"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_CARD_KEY"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_SILPH_CO_5F_CARD_KEY"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_CARD_KEY"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO.CARD_KEY_PICKUP",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_HIDE_SILPH_CO_5F_CARD_KEY",
          "ITEM_CARD_KEY"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_2F.TM_REWARD",
        ["profile"] = "tutor_flag",
        ["references"] = {
          "pokefirered/data/scripts/move_tutors.inc"
        },
        ["target"] = "FLAG_TUTOR_THUNDER_WAVE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SILPH_CO.RIVAL_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "SILPH_RIVAL",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_LAPRAS_FROM_SILPH"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_LAPRAS_FROM_SILPH"
          }
        },
        ["disposition"] = "external_subsystem",
        ["eventId"] = "SILPH_CO.LAPRAS_GIFT",
        ["notes"] = {
          "Claim commits only after any surviving Lapras payload has been converted; progress never fabricates the Pokemon."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        },
        ["target"] = "FLAG_GOT_LAPRAS_FROM_SILPH"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SILPH_CO.GIOVANNI_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "SILPH_CLEAR",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SILPH_CO.CLEARED",
        ["profile"] = "reducer_input",
        ["reducer"] = "SILPH_CLEAR",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SILPH_CO.MASTER_BALL_REWARD",
        ["profile"] = "reducer_input",
        ["reducer"] = "SILPH_CLEAR",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_3F.HYPER_POTION_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_3F_HYPER_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.FULL_HEAL_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_4F_FULL_HEAL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.MAX_REVIVE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_4F_MAX_REVIVE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_4F.ESCAPE_ROPE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_4F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_5F_TM01"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_5F.PROTEIN_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_5F_PROTEIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.HP_UP_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_6F_HP_UP"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_6F.X_ITEM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_6F_X_SPECIAL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.CALCIUM_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_7F_CALCIUM"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_7F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_7F_TM08"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_10F_ULTRA_BALL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.RARE_CANDY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_10F_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SILPH_CO_10F.CARBOS_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_10F_CARBOS"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_4F.TM41_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_4F_TM41"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_8F.IRON_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_8F_IRON"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_11F.ZINC_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_SILPH_CO_11F_ZINC"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_2F.HIDDEN_ULTRA_BALL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_2F_ULTRA_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_3F.HIDDEN_PROTEIN",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_3F_PROTEIN"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_4F.HIDDEN_IRON",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_4F_IRON"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_5F.HIDDEN_PP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_5F_PP_UP"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_6F.HIDDEN_CARBOS",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_6F_CARBOS"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_7F.HIDDEN_ZINC",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_7F_ZINC"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_8F.HIDDEN_NUGGET",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_8F_NUGGET"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_9F.HIDDEN_CALCIUM",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_9F_CALCIUM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_10F.HIDDEN_HP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_10F_HP_UP"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "SILPH_CO_11F.HIDDEN_REVIVE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_SILPH_CO_11F_REVIVE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PSYCHIC_JOHAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PSYCHIC_TYRON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PSYCHIC_CAMERON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PSYCHIC_PRESTON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_AMANDA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_STACY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "SAFFRON_GYM.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_TASHA"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SAFFRON_GYM.SABRINA_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "SABRINA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SAFFRON_GYM.MARSH_BADGE",
        ["profile"] = "reducer_input",
        ["reducer"] = "SABRINA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "SAFFRON_GYM.TM_REWARD",
        ["profile"] = "reducer_input",
        ["reducer"] = "SABRINA_REWARD",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "SAFFRON_ARC.DEPARTURE_READY",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/scripts.inc",
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        }
      }
    },
    ["reducers"] = {
      {
        ["cases"] = {
          {
            ["id"] = "master_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_BLACK_BELT_KOICHI"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SAFFRON_CITY_DOJO",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HITMON_FROM_DOJO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONLEE_BALL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONCHAN_BALL"
              }
            },
            ["when"] = "KARATE_MASTER_BATTLE not completed"
          },
          {
            ["id"] = "gift_available",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BLACK_BELT_KOICHI"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SAFFRON_CITY_DOJO",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HITMON_FROM_DOJO"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONLEE_BALL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONCHAN_BALL"
              }
            },
            ["when"] = "KARATE_MASTER_BATTLE completed and HITMON_GIFT not completed"
          },
          {
            ["audit"] = "Commit requires the selected Hitmonlee/Hitmonchan collection payload to have been converted.",
            ["id"] = "gift_claimed",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BLACK_BELT_KOICHI"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SAFFRON_CITY_DOJO",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_HITMON_FROM_DOJO"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONLEE_BALL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_DOJO_HITMONCHAN_BALL"
              }
            },
            ["when"] = "KARATE_MASTER_BATTLE completed and HITMON_GIFT completed"
          }
        },
        ["id"] = "DOJO_HITMON",
        ["inputs"] = {
          "FIGHTING_DOJO.KARATE_MASTER_BATTLE",
          "FIGHTING_DOJO.HITMON_GIFT"
        },
        ["notes"] = {
          "The gift claim hides both balls; the canonical value and collection converter preserve which Hitmon was selected."
        },
        ["owns"] = {
          "TRAINER_BLACK_BELT_KOICHI",
          "VAR_MAP_SCENE_SAFFRON_CITY_DOJO",
          "FLAG_GOT_HITMON_FROM_DOJO",
          "FLAG_HIDE_DOJO_HITMONLEE_BALL",
          "FLAG_HIDE_DOJO_HITMONCHAN_BALL"
        },
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Dojo/scripts.inc",
          "pokefirered/data/maps/SaffronCity_Dojo/map.json"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SILPH_CO_7F",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_RIVAL"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SILPH_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SILPH_CHARMANDER"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_SILPH_SQUIRTLE"
              }
            },
            ["when"] = "RIVAL_BATTLE not completed"
          },
          {
            ["id"] = "completed",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SILPH_CO_7F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_RIVAL"
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SILPH_CHARMANDER"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SILPH_SQUIRTLE"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_SILPH_BULBASAUR"
                }
              }
            },
            ["when"] = "RIVAL_BATTLE completed"
          }
        },
        ["id"] = "SILPH_RIVAL",
        ["inputs"] = {
          "SILPH_CO.RIVAL_BATTLE"
        },
        ["notes"] = {
          "Requires the supported player-starter branch inherited from Slice 1."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_SILPH_CO_7F",
          "FLAG_HIDE_SILPH_RIVAL",
          "TRAINER_RIVAL_SILPH_BULBASAUR",
          "TRAINER_RIVAL_SILPH_CHARMANDER",
          "TRAINER_RIVAL_SILPH_SQUIRTLE"
        },
        ["references"] = {
          "pokefirered/data/maps/SilphCo_7F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "occupied",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI_2"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SILPH_CO_11F",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_ROCKETS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CIVILIANS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_MASTER_BALL_FROM_SILPH"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_MASTER_BALL"
              }
            },
            ["when"] = "GIOVANNI_BATTLE not completed and CLEARED not completed"
          },
          {
            ["id"] = "cleared_reward_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI_2"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SILPH_CO_11F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_ROCKETS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CIVILIANS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_MASTER_BALL_FROM_SILPH"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_MASTER_BALL"
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and CLEARED completed and MASTER_BALL_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI_2"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_SILPH_CO_11F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_ROCKETS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CIVILIANS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_MASTER_BALL_FROM_SILPH"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_MASTER_BALL"
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and CLEARED completed and MASTER_BALL_REWARD completed"
          }
        },
        ["id"] = "SILPH_CLEAR",
        ["inputs"] = {
          "SILPH_CO.GIOVANNI_BATTLE",
          "SILPH_CO.CLEARED",
          "SILPH_CO.MASTER_BALL_REWARD"
        },
        ["notes"] = {
          "Giovanni and the evacuation milestone are coherent; Master Ball remains independently pending when unclaimed."
        },
        ["owns"] = {
          "TRAINER_BOSS_GIOVANNI_2",
          "VAR_MAP_SCENE_SILPH_CO_11F",
          "FLAG_HIDE_SILPH_ROCKETS",
          "FLAG_HIDE_SAFFRON_ROCKETS",
          "FLAG_HIDE_SAFFRON_CIVILIANS",
          "FLAG_GOT_MASTER_BALL_FROM_SILPH",
          "ITEM_MASTER_BALL"
        },
        ["references"] = {
          "pokefirered/data/maps/SilphCo_11F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_SABRINA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_SABRINA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE06_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM04_FROM_SABRINA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CITY_POKECENTER_SABRINA_JOURNALS"
              }
            },
            ["when"] = "SABRINA_BATTLE not completed"
          },
          {
            ["id"] = "defeated_tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_SABRINA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_SABRINA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE06_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM04_FROM_SABRINA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CITY_POKECENTER_SABRINA_JOURNALS"
              }
            },
            ["when"] = "SABRINA_BATTLE completed and MARSH_BADGE completed and TM_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_SABRINA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_SABRINA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE06_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM04_FROM_SABRINA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SAFFRON_CITY_POKECENTER_SABRINA_JOURNALS"
              }
            },
            ["when"] = "SABRINA_BATTLE completed and MARSH_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "SABRINA_REWARD",
        ["inputs"] = {
          "SAFFRON_GYM.SABRINA_BATTLE",
          "SAFFRON_GYM.MARSH_BADGE",
          "SAFFRON_GYM.TM_REWARD"
        },
        ["notes"] = {
          "RBY TM46 Psywave role-maps to FireRed TM04 Calm Mind; it never grants FireRed ITEM_TM46."
        },
        ["owns"] = {
          "TRAINER_LEADER_SABRINA",
          "FLAG_DEFEATED_SABRINA",
          "FLAG_BADGE06_GET",
          "FLAG_GOT_TM04_FROM_SABRINA",
          "ITEM_TM04",
          "FLAG_HIDE_SAFFRON_CITY_POKECENTER_SABRINA_JOURNALS"
        },
        ["references"] = {
          "pokefirered/data/maps/SaffronCity_Gym/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_SAFFRON_ARC_COMPLETE"
  }
}
