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
      "objectToggles"
    },
    ["eventRules"] = {
      {
        ["completedAny"] = {
          ["all"] = {
            "visited.MT_MOON_1F",
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_0",
            "itemsTaken.MT_MOON_1F_obj_8",
            "flags.EVENT_BEAT_MT_MOON_3_SUPER_NERD"
          }
        },
        ["eventId"] = "VISIT.MT_MOON",
        ["mode"] = "derived",
        ["note"] = "Any durable cave activity proves entry; absence does not prove the cave was never entered."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_0",
            "defeatedTrainers.MT_MOON_1F_obj_1"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_1",
            "defeatedTrainers.MT_MOON_1F_obj_2"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_2",
            "defeatedTrainers.MT_MOON_1F_obj_3"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_3",
            "defeatedTrainers.MT_MOON_1F_obj_4"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_4",
            "defeatedTrainers.MT_MOON_1F_obj_5"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_5",
            "defeatedTrainers.MT_MOON_1F_obj_6"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_1_TRAINER_6",
            "defeatedTrainers.MT_MOON_1F_obj_7"
          }
        },
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_3_TRAINER_0",
            "defeatedTrainers.MT_MOON_B2F_obj_2"
          }
        },
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_3_TRAINER_1",
            "defeatedTrainers.MT_MOON_B2F_obj_3"
          }
        },
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_3_TRAINER_2",
            "defeatedTrainers.MT_MOON_B2F_obj_4"
          }
        },
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["blue"] = {
            "flags.EVENT_BEAT_MT_MOON_3_TRAINER_3",
            "defeatedTrainers.MT_MOON_B2F_obj_5"
          },
          ["red"] = {
            "flags.EVENT_BEAT_MT_MOON_3_TRAINER_3",
            "defeatedTrainers.MT_MOON_B2F_obj_5"
          }
        },
        ["eventId"] = "MT_MOON_B2F.ROCKET_SLOT_3",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "yellow"
        }
      },
      {
        ["completedAny"] = {
          ["yellow"] = {
            "flags.EVENT_BEAT_MT_MOON_3_JESSIE_JAMES"
          }
        },
        ["eventId"] = "MT_MOON_B2F.JESSIE_JAMES_BATTLE",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "red",
          "blue"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MT_MOON_3_SUPER_NERD",
            "flags.EVENT_BEAT_MT_MOON_EXIT_SUPER_NERD",
            "defeatedTrainers.MT_MOON_B2F_obj_1",
            "flags.EVENT_GOT_DOME_FOSSIL",
            "flags.EVENT_GOT_HELIX_FOSSIL"
          }
        },
        ["eventId"] = "MT_MOON_B2F.SUPER_NERD_BATTLE",
        ["mode"] = "exact",
        ["note"] = "Either fossil acquisition causally proves the mandatory Super Nerd battle even in older save shapes that omitted its dedicated alias."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_8"
          }
        },
        ["eventId"] = "MT_MOON_1F.POTION_1_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_9"
          }
        },
        ["eventId"] = "MT_MOON_1F.MOON_STONE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_10"
          }
        },
        ["eventId"] = "MT_MOON_1F.RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_11"
          }
        },
        ["eventId"] = "MT_MOON_1F.ESCAPE_ROPE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_12"
          }
        },
        ["eventId"] = "MT_MOON_1F.POTION_2_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_1F_obj_13"
          }
        },
        ["eventId"] = "MT_MOON_1F.TM12_WATER_GUN_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_B2F_obj_8"
          }
        },
        ["eventId"] = "MT_MOON_B2F.HP_UP_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.MT_MOON_B2F_obj_9"
          }
        },
        ["eventId"] = "MT_MOON_B2F.TM01_MEGA_PUNCH_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "MT_MOON_B2F.REVIVE_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B2F.ANTIDOTE_PICKUP",
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
            "hiddenTaken.MT_MOON_B2F_18_12"
          }
        },
        ["eventId"] = "MT_MOON_B2F.HIDDEN_MOON_STONE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.MT_MOON_B2F_33_9"
          }
        },
        ["eventId"] = "MT_MOON_B2F.HIDDEN_ETHER",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_1",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_2",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_3",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_1",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_2",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_3",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["availableAfter"] = {
          "MT_MOON_B2F.SUPER_NERD_BATTLE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_DOME_FOSSIL"
          }
        },
        ["eventId"] = "MT_MOON.DOME_FOSSIL_ACQUIRED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "MT_MOON_B2F.SUPER_NERD_BATTLE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_HELIX_FOSSIL"
          }
        },
        ["eventId"] = "MT_MOON.HELIX_FOSSIL_ACQUIRED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "MT_MOON_B2F.SUPER_NERD_BATTLE"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_DOME_FOSSIL",
            "flags.EVENT_GOT_HELIX_FOSSIL"
          }
        },
        ["eventId"] = "MT_MOON.FOSSIL_CHOICE",
        ["mode"] = "choice",
        ["value"] = "derive:fossil_choice"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "visited.CERULEAN_CITY",
            "flags.EVENT_BEAT_CERULEAN_RIVAL",
            "flags.EVENT_MET_BILL"
          }
        },
        ["eventId"] = "VISIT.ROUTE_4_EAST",
        ["mode"] = "derived",
        ["note"] = "Route 4 visitation alone spans both sides of Mt. Moon; downstream Cerulean evidence proves the east exit."
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_4_TRAINER_0",
            "defeatedTrainers.ROUTE_4_obj_2"
          }
        },
        ["eventId"] = "ROUTE4_EAST.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_4_obj_3"
          }
        },
        ["eventId"] = "ROUTE4_EAST.TM04_WHIRLWIND_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE4_EAST.MEGA_PUNCH_TUTOR",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE4_EAST.MEGA_KICK_TUTOR",
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
            "hiddenTaken.ROUTE_4_40_3"
          }
        },
        ["eventId"] = "ROUTE4_EAST.HIDDEN_GREAT_BALL",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE4_EAST.HIDDEN_RAZZ_BERRY",
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
            "visited.CERULEAN_CITY"
          }
        },
        ["eventId"] = "VISIT.CERULEAN_CITY",
        ["mode"] = "visit"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CERULEAN_RIVAL"
          }
        },
        ["eventId"] = "CERULEAN.RIVAL_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "CERULEAN.FAME_CHECKER_REWARD",
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
            "hiddenTaken.CERULEAN_CITY_15_8"
          }
        },
        ["eventId"] = "CERULEAN.HIDDEN_RARE_CANDY",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_BICYCLE"
          }
        },
        ["eventId"] = "CERULEAN.BICYCLE_ACQUIRED",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "CERULEAN.JYNX_TRADE",
        ["mode"] = "unresolved",
        ["note"] = "The current decoded RBY snapshot exposes no authoritative in-game-trade completion byte; owning Jynx is not sufficient proof."
      },
      {
        ["completedAny"] = {
          ["yellow"] = {
            "flags.EVENT_GOT_BULBASAUR_IN_CERULEAN"
          }
        },
        ["eventId"] = "CERULEAN.YELLOW_BULBASAUR_GIFT",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "red",
          "blue"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CERULEAN_GYM_TRAINER_0",
            "defeatedTrainers.CERULEAN_GYM_obj_1"
          }
        },
        ["eventId"] = "CERULEAN_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CERULEAN_GYM_TRAINER_1",
            "defeatedTrainers.CERULEAN_GYM_obj_2"
          }
        },
        ["eventId"] = "CERULEAN_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MISTY"
          }
        },
        ["eventId"] = "CERULEAN_GYM.MISTY_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MISTY"
          }
        },
        ["eventId"] = "CERULEAN_GYM.CASCADE_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM11"
          }
        },
        ["eventId"] = "CERULEAN_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "CERULEAN_GYM.MISTY_BATTLE"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_0",
            "flags.EVENT_GOT_NUGGET",
            "flags.EVENT_BEAT_ROUTE24_ROCKET",
            "flags.EVENT_BEAT_ROUTE_24_ROCKET",
            "flags.EVENT_MET_BILL"
          }
        },
        ["eventId"] = "VISIT.ROUTE_24",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_0",
            "defeatedTrainers.ROUTE_24_obj_2"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_1",
            "defeatedTrainers.ROUTE_24_obj_3"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_2",
            "defeatedTrainers.ROUTE_24_obj_4"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_3",
            "defeatedTrainers.ROUTE_24_obj_5"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_4",
            "defeatedTrainers.ROUTE_24_obj_6"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_24_TRAINER_5",
            "defeatedTrainers.ROUTE_24_obj_7"
          }
        },
        ["eventId"] = "ROUTE24.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_NUGGET"
          }
        },
        ["eventId"] = "ROUTE24.NUGGET_REWARD",
        ["mode"] = "exact",
        ["pendingAfterAll"] = {
          "ROUTE24.TRAINER_SHARED_1",
          "ROUTE24.TRAINER_SHARED_2",
          "ROUTE24.TRAINER_SHARED_3",
          "ROUTE24.TRAINER_SHARED_4",
          "ROUTE24.TRAINER_SHARED_5"
        }
      },
      {
        ["availableAfter"] = {
          "ROUTE24.NUGGET_REWARD"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE24_ROCKET",
            "flags.EVENT_BEAT_ROUTE_24_ROCKET",
            "defeatedTrainers.ROUTE_24_obj_1"
          }
        },
        ["eventId"] = "ROUTE24.ROCKET_RECRUITER_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_24_obj_8"
          }
        },
        ["eventId"] = "ROUTE24.TM45_THUNDER_WAVE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE24.HIDDEN_PECHA_BERRY",
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
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_0",
            "flags.EVENT_MET_BILL",
            "flags.EVENT_GOT_SS_TICKET"
          }
        },
        ["eventId"] = "VISIT.ROUTE_25",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_0",
            "defeatedTrainers.ROUTE_25_obj_1"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_1",
            "defeatedTrainers.ROUTE_25_obj_2"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_2",
            "defeatedTrainers.ROUTE_25_obj_3"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_3",
            "defeatedTrainers.ROUTE_25_obj_4"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_4",
            "defeatedTrainers.ROUTE_25_obj_5"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_5",
            "defeatedTrainers.ROUTE_25_obj_6"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_6",
            "defeatedTrainers.ROUTE_25_obj_7"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_7",
            "defeatedTrainers.ROUTE_25_obj_8"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_25_TRAINER_8",
            "defeatedTrainers.ROUTE_25_obj_9"
          }
        },
        ["eventId"] = "ROUTE25.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_25_obj_10"
          }
        },
        ["eventId"] = "ROUTE25.TM19_SEISMIC_TOSS_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.ROUTE_25_10_1"
          }
        },
        ["eventId"] = "ROUTE25.HIDDEN_ELIXIR",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.ROUTE_25_38_3"
          }
        },
        ["eventId"] = "ROUTE25.HIDDEN_ETHER",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE25.HIDDEN_ORAN_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE25.HIDDEN_BLUK_BERRY",
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
            "flags.EVENT_MET_BILL"
          }
        },
        ["eventId"] = "BILL.MET_TRANSFORMED_BILL",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "BILL.MET_TRANSFORMED_BILL"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BILL_SAID_USE_CELL_SEPARATOR"
          }
        },
        ["eventId"] = "BILL.HELP_ACCEPTED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "BILL.HELP_ACCEPTED"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_USED_CELL_SEPARATOR_ON_BILL"
          }
        },
        ["eventId"] = "BILL.CELL_SEPARATOR_OPERATED",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "BILL.CELL_SEPARATOR_OPERATED"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_USED_CELL_SEPARATOR_ON_BILL",
            "flags.EVENT_MET_BILL_2"
          }
        },
        ["eventId"] = "BILL.RESCUE_COMPLETED",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_SS_TICKET"
          }
        },
        ["eventId"] = "BILL.SS_TICKET_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "BILL.RESCUE_COMPLETED"
        }
      },
      {
        ["availableAfter"] = {
          "BILL.RESCUE_COMPLETED"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING"
          }
        },
        ["eventId"] = "BILL.LEFT_COTTAGE_AFTER_RESCUE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_SS_TICKET"
          }
        },
        ["eventId"] = "CERULEAN.ROBBED_HOUSE_ACCESS",
        ["mode"] = "derived",
        ["value"] = "open"
      },
      {
        ["availableAfter"] = {
          "CERULEAN.ROBBED_HOUSE_ACCESS"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CERULEAN_ROCKET_THIEF"
          }
        },
        ["eventId"] = "CERULEAN.ROCKET_THIEF_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "objectToggles.CERULEAN_CITY.CERULEANCITY_ROCKET=false"
          }
        },
        ["eventId"] = "CERULEAN.TM28_RECOVERY_REWARD",
        ["mode"] = "exact",
        ["note"] = "RBY has no TM28 receipt flag; the Rocket being durably hidden is the exact successful-claim evidence.",
        ["pendingAfter"] = {
          "CERULEAN.ROCKET_THIEF_BATTLE"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CERULEAN_ROCKET_THIEF"
          }
        },
        ["eventId"] = "CERULEAN.ROUTE5_DEPARTURE_UNLOCKED",
        ["mode"] = "derived",
        ["value"] = "open"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_MT_MOON_TO_CERULEAN_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "mt-moon-to-cerulean.rby.evidence.json",
    ["materialization"] = "mt-moon-to-cerulean.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.MT_MOON",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_MT_MOON_1F"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_MARCOS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_JOSH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_MIRIAM"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_SUPER_NERD_JOVAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_IRIS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_KENT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_ROBBY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.ROCKET_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_3"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON_B2F.ROCKET_SLOT_3",
        ["profile"] = "reducer_input",
        ["reducer"] = "MT_MOON_FOURTH_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON_B2F.JESSIE_JAMES_BATTLE",
        ["notes"] = {
          "Explicit Yellow-to-FireRed role mapping."
        },
        ["profile"] = "reducer_input",
        ["reducer"] = "MT_MOON_FOURTH_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON_B2F.SUPER_NERD_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "MT_MOON_FOSSILS",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.POTION_1_PICKUP",
        ["notes"] = {
          "Coordinate/slot mapping: RBY first Potion becomes FireRed Paralyze Heal."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_PARALYZE_HEAL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.MOON_STONE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_MOON_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.RARE_CANDY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.ESCAPE_ROPE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.POTION_2_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_1F.TM12_WATER_GUN_PICKUP",
        ["notes"] = {
          "Coordinate/slot mapping to FireRed TM09; do not grant RBY TM12."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_1F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_1F_TM09"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.HP_UP_PICKUP",
        ["notes"] = {
          "Coordinate/slot mapping to FireRed Star Piece."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_B2F_STAR_PIECE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.TM01_MEGA_PUNCH_PICKUP",
        ["notes"] = {
          "Coordinate/slot mapping to FireRed TM46."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_B2F_TM46"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B2F.REVIVE_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_B2F_REVIVE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B2F.ANTIDOTE_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDE_MT_MOON_B2F_ANTIDOTE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.HIDDEN_MOON_STONE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B2F_MOON_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "MT_MOON_B2F.HIDDEN_ETHER",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B2F_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_1",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_TINY_MUSHROOM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_2",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_TINY_MUSHROOM_2"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_TINY_MUSHROOM_3",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_TINY_MUSHROOM_3"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_1",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_BIG_MUSHROOM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_2",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_BIG_MUSHROOM_2"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "MT_MOON_B1F.HIDDEN_BIG_MUSHROOM_3",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B1F/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_MT_MOON_B1F_BIG_MUSHROOM_3"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON.DOME_FOSSIL_ACQUIRED",
        ["profile"] = "external_item",
        ["reducer"] = "MT_MOON_FOSSILS",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON.HELIX_FOSSIL_ACQUIRED",
        ["profile"] = "external_item",
        ["reducer"] = "MT_MOON_FOSSILS",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "MT_MOON.FOSSIL_CHOICE",
        ["profile"] = "reducer_input",
        ["reducer"] = "MT_MOON_FOSSILS",
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_4_EAST",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route4/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE4_EAST.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_LASS_CRISSY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE4_EAST.TM04_WHIRLWIND_PICKUP",
        ["notes"] = {
          "RBY TM04 slot maps to FireRed TM05."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route4/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE4_TM05"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE4_EAST.MEGA_PUNCH_TUTOR",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route4/scripts.inc"
        },
        ["target"] = "FLAG_TUTOR_MEGA_PUNCH"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE4_EAST.MEGA_KICK_TUTOR",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route4/scripts.inc"
        },
        ["target"] = "FLAG_TUTOR_MEGA_KICK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE4_EAST.HIDDEN_GREAT_BALL",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route4/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE4_GREAT_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE4_EAST.HIDDEN_RAZZ_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route4/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE4_RAZZ_BERRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.CERULEAN_CITY",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        },
        ["target"] = "FLAG_WORLD_MAP_CERULEAN_CITY"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.RIVAL_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CERULEAN_RIVAL",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.FAME_CHECKER_REWARD",
        ["profile"] = "target_default_available",
        ["reducer"] = "CERULEAN_RIVAL",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN.HIDDEN_RARE_CANDY",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CERULEAN_CITY_RARE_CANDY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_BICYCLE"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_BICYCLE"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_BICYCLE"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN.BICYCLE_ACQUIRED",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_BikeShop/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_BICYCLE",
          "ITEM_BICYCLE"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN.JYNX_TRADE",
        ["notes"] = {
          "Party/box conversion owns the traded Pokémon and must not synthesize a second Jynx."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_House3/scripts.inc"
        },
        ["target"] = "FLAG_DID_ZYNX_TRADE"
      },
      {
        ["disposition"] = "external_subsystem",
        ["eventId"] = "CERULEAN.YELLOW_BULBASAUR_GIFT",
        ["notes"] = {
          "FireRed has no Cerulean Bulbasaur gift. The received Bulbasaur is preserved only through party/box conversion; no target story flag is invented."
        },
        ["profile"] = "external_pokemon",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_DIANA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_SWIMMER_MALE_LUIS"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN_GYM.MISTY_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CERULEAN_MISTY",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN_GYM.CASCADE_BADGE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CERULEAN_MISTY",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN_GYM.TM_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "CERULEAN_MISTY",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_24",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route24/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CAMPER_SHANE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CAMPER_ETHAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_LASS_RELI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_TIMMY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_LASS_ALI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_CALE"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE24.NUGGET_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "ROUTE24_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/Route24/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE24.ROCKET_RECRUITER_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROUTE24_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/Route24/scripts.inc"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE24.TM45_THUNDER_WAVE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route24/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE24_TM45"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE24.HIDDEN_PECHA_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route24/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE24_PECHA_BERRY"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_25",
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_JOEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_DAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_CAMPER_FLINT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_PICNICKER_KELSEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_YOUNGSTER_CHAD"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_LASS_HALEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_HIKER_FRANKLIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_HIKER_NOB"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/scripts/trainers.inc"
        },
        ["target"] = "TRAINER_HIKER_WAYNE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.TM19_SEISMIC_TOSS_PICKUP",
        ["notes"] = {
          "RBY TM19 slot maps to FireRed TM43."
        },
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        },
        ["target"] = "FLAG_HIDE_ROUTE25_TM43"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.HIDDEN_ELIXIR",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE25_ELIXIR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE25.HIDDEN_ETHER",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE25_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE25.HIDDEN_ORAN_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE25_ORAN_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE25.HIDDEN_BLUK_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/data/maps/Route25/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE25_BLUK_BERRY"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.MET_TRANSFORMED_BILL",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.HELP_ACCEPTED",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.CELL_SEPARATOR_OPERATED",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.RESCUE_COMPLETED",
        ["profile"] = "reducer_input",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.SS_TICKET_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "BILL.LEFT_COTTAGE_AFTER_RESCUE",
        ["profile"] = "lossy_no_write",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.ROBBED_HOUSE_ACCESS",
        ["profile"] = "reducer_input",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.ROCKET_THIEF_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CERULEAN_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.TM28_RECOVERY_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "CERULEAN_ROCKET",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CERULEAN.ROUTE5_DEPARTURE_UNLOCKED",
        ["profile"] = "reducer_input",
        ["reducer"] = "BILL_STORY",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      }
    },
    ["reducers"] = {
      {
        ["cases"] = {
          {
            ["id"] = "red_blue_fourth_grunt_complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_4"
              }
            },
            ["when"] = "sourceGame in [red,blue] and ROCKET_SLOT_3 completed"
          },
          {
            ["audit"] = "Yellow Jessie/James is role-mapped to FireRed's fourth Mt. Moon Rocket so a completed mandatory encounter is not replayed as an extra grunt.",
            ["id"] = "yellow_jessie_james_complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_4"
              }
            },
            ["when"] = "sourceGame == yellow and JESSIE_JAMES_BATTLE completed"
          },
          {
            ["id"] = "fourth_target_battle_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_4"
              }
            },
            ["when"] = "neither applicable source encounter is completed"
          }
        },
        ["id"] = "MT_MOON_FOURTH_ROCKET",
        ["inputs"] = {
          "MT_MOON_B2F.ROCKET_SLOT_3",
          "MT_MOON_B2F.JESSIE_JAMES_BATTLE"
        },
        ["notes"] = {
          "The Yellow Jessie/James encounter has no literal FireRed counterpart; this is an explicit structural role mapping, not an identity claim."
        },
        ["owns"] = {
          "TRAINER_TEAM_ROCKET_GRUNT_4"
        },
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "miguel_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_SUPER_NERD_MIGUEL"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_MT_MOON_B2F",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_FOSSIL_FROM_MT_MOON"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_DOME_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HELIX_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOME_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_HELIX_FOSSIL"
              }
            },
            ["when"] = "SUPER_NERD_BATTLE not completed"
          },
          {
            ["id"] = "fossil_choice_available",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_SUPER_NERD_MIGUEL"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_MT_MOON_B2F",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_FOSSIL_FROM_MT_MOON"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_DOME_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HELIX_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_DOME_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_HELIX_FOSSIL"
              }
            },
            ["when"] = "SUPER_NERD_BATTLE completed and neither fossil acquisition completed"
          },
          {
            ["id"] = "dome_selected",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_SUPER_NERD_MIGUEL"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_MT_MOON_B2F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_FOSSIL_FROM_MT_MOON"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_DOME_FOSSIL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_HELIX_FOSSIL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_DOME_FOSSIL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_HELIX_FOSSIL"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_DOME_FOSSIL"
              }
            },
            ["when"] = "FOSSIL_CHOICE.value == dome and DOME_FOSSIL_ACQUIRED completed"
          },
          {
            ["id"] = "helix_selected",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_SUPER_NERD_MIGUEL"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_MT_MOON_B2F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_FOSSIL_FROM_MT_MOON"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_DOME_FOSSIL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_HELIX_FOSSIL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_DOME_FOSSIL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_HELIX_FOSSIL"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_HELIX_FOSSIL"
              }
            },
            ["when"] = "FOSSIL_CHOICE.value == helix and HELIX_FOSSIL_ACQUIRED completed"
          },
          {
            ["blocker"] = "FireRed's Mt. Moon story has one shared completion flag and requires an explicit modified-save compatibility policy.",
            ["id"] = "both_fossils_unsupported",
            ["operations"] = {},
            ["when"] = "FOSSIL_CHOICE.value == both"
          }
        },
        ["id"] = "MT_MOON_FOSSILS",
        ["inputs"] = {
          "MT_MOON_B2F.SUPER_NERD_BATTLE",
          "MT_MOON.DOME_FOSSIL_ACQUIRED",
          "MT_MOON.HELIX_FOSSIL_ACQUIRED",
          "MT_MOON.FOSSIL_CHOICE"
        },
        ["owns"] = {
          "TRAINER_SUPER_NERD_MIGUEL",
          "VAR_MAP_SCENE_MT_MOON_B2F",
          "FLAG_GOT_DOME_FOSSIL",
          "FLAG_GOT_HELIX_FOSSIL",
          "FLAG_GOT_FOSSIL_FROM_MT_MOON",
          "FLAG_HIDE_DOME_FOSSIL",
          "FLAG_HIDE_HELIX_FOSSIL",
          "ITEM_DOME_FOSSIL",
          "ITEM_HELIX_FOSSIL"
        },
        ["references"] = {
          "pokefirered/data/maps/MtMoon_B2F/scripts.inc",
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "rival_available",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CERULEAN_CITY_RIVAL",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CERULEAN_RIVAL"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_FAME_CHECKER"
              }
            },
            ["when"] = "RIVAL_BATTLE not completed"
          },
          {
            ["audit"] = "FireRed couples the Fame Checker to the non-repeatable rival scene, so completed RBY battles advance the target-only reward to completed.",
            ["id"] = "rival_completed",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CERULEAN_CITY_RIVAL",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_CERULEAN_RIVAL"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_FAME_CHECKER"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_FAME_CHECKER"
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_CERULEAN_CHARMANDER"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_CERULEAN_SQUIRTLE"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_CERULEAN_BULBASAUR"
                }
              }
            },
            ["when"] = "RIVAL_BATTLE completed"
          }
        },
        ["id"] = "CERULEAN_RIVAL",
        ["inputs"] = {
          "CERULEAN.RIVAL_BATTLE",
          "CERULEAN.FAME_CHECKER_REWARD"
        },
        ["notes"] = {
          "Requires the inherited starter/rival branch established by slice 1. Yellow Pikachu inherits the reviewed Squirtle/Venusaur FireRed compatibility branch without receiving a replacement starter."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_CERULEAN_CITY_RIVAL",
          "FLAG_HIDE_CERULEAN_RIVAL",
          "FLAG_GOT_FAME_CHECKER",
          "ITEM_FAME_CHECKER",
          "TRAINER_RIVAL_CERULEAN_SQUIRTLE",
          "TRAINER_RIVAL_CERULEAN_BULBASAUR",
          "TRAINER_RIVAL_CERULEAN_CHARMANDER"
        },
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "misty_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_MISTY"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_MISTY"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE02_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM03_FROM_MISTY"
              }
            },
            ["when"] = "MISTY_BATTLE not completed"
          },
          {
            ["id"] = "misty_defeated_tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_MISTY"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_MISTY"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE02_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM03_FROM_MISTY"
              }
            },
            ["when"] = "MISTY_BATTLE completed and CASCADE_BADGE completed and TM_REWARD in [unseen,available,reward_pending]"
          },
          {
            ["id"] = "misty_complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_MISTY"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_MISTY"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE02_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM03_FROM_MISTY"
              }
            },
            ["when"] = "MISTY_BATTLE completed and CASCADE_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "CERULEAN_MISTY",
        ["inputs"] = {
          "CERULEAN_GYM.MISTY_BATTLE",
          "CERULEAN_GYM.CASCADE_BADGE",
          "CERULEAN_GYM.TM_REWARD"
        },
        ["notes"] = {
          "Role mapping converts RBY TM11 BubbleBeam to FireRed TM03 Water Pulse; it never grants ITEM_TM11."
        },
        ["owns"] = {
          "TRAINER_LEADER_MISTY",
          "FLAG_DEFEATED_MISTY",
          "FLAG_BADGE02_GET",
          "FLAG_GOT_TM03_FROM_MISTY",
          "ITEM_TM03"
        },
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity_Gym/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "recruiter_available",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE24",
                ["value"] = 0
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_6"
              }
            },
            ["when"] = "ROCKET_RECRUITER_BATTLE not completed"
          },
          {
            ["id"] = "recruiter_complete",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE24",
                ["value"] = 1
              },
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_6"
              }
            },
            ["when"] = "ROCKET_RECRUITER_BATTLE completed"
          }
        },
        ["id"] = "ROUTE24_ROCKET",
        ["inputs"] = {
          "ROUTE24.NUGGET_REWARD",
          "ROUTE24.ROCKET_RECRUITER_BATTLE"
        },
        ["notes"] = {
          "FireRed has no Nugget-received flag: current Nugget quantity belongs to inventory conversion. A received-Nugget/lost-battle source state legitimately leaves the recruiter battle replayable."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_ROUTE24",
          "TRAINER_TEAM_ROCKET_GRUNT_6"
        },
        ["references"] = {
          "pokefirered/data/maps/Route24/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["audit"] = "Meeting/help/machine partials use temporary FireRed state and are normalized to Bill's replayable request.",
            ["id"] = "bill_replayable",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HELPED_BILL_IN_SEA_COTTAGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET_DUP"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_SYS_NOT_SOMEONES_PC"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_BILL_CLEFAIRY"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_BILL_HUMAN_SEA_COTTAGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_NUGGET_BRIDGE_ROCKET"
              }
            },
            ["when"] = "RESCUE_COMPLETED not completed"
          },
          {
            ["id"] = "bill_rescued_ticket_pending",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HELPED_BILL_IN_SEA_COTTAGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET_DUP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_BILL_CLEFAIRY"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_BILL_HUMAN_SEA_COTTAGE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_NUGGET_BRIDGE_ROCKET"
              }
            },
            ["when"] = "RESCUE_COMPLETED completed and SS_TICKET_REWARD in [unseen,available,reward_pending]"
          },
          {
            ["id"] = "ss_ticket_complete",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HELPED_BILL_IN_SEA_COTTAGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_SS_TICKET_DUP"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_SYS_NOT_SOMEONES_PC"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_BILL_CLEFAIRY"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_BILL_HUMAN_SEA_COTTAGE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_NUGGET_BRIDGE_ROCKET"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_SS_TICKET"
              }
            },
            ["when"] = "RESCUE_COMPLETED completed and SS_TICKET_REWARD completed"
          }
        },
        ["id"] = "BILL_STORY",
        ["inputs"] = {
          "BILL.MET_TRANSFORMED_BILL",
          "BILL.HELP_ACCEPTED",
          "BILL.CELL_SEPARATOR_OPERATED",
          "BILL.RESCUE_COMPLETED",
          "BILL.SS_TICKET_REWARD",
          "BILL.LEFT_COTTAGE_AFTER_RESCUE",
          "CERULEAN.ROBBED_HOUSE_ACCESS",
          "CERULEAN.ROUTE5_DEPARTURE_UNLOCKED"
        },
        ["notes"] = {
          "FireRed does not persist Bill-in-teleporter; interrupted transformations restart from the request instead of manufacturing a temporary flag."
        },
        ["owns"] = {
          "FLAG_HELPED_BILL_IN_SEA_COTTAGE",
          "FLAG_GOT_SS_TICKET",
          "FLAG_GOT_SS_TICKET_DUP",
          "FLAG_SYS_NOT_SOMEONES_PC",
          "FLAG_HIDE_BILL_CLEFAIRY",
          "FLAG_HIDE_BILL_HUMAN_SEA_COTTAGE",
          "FLAG_HIDE_NUGGET_BRIDGE_ROCKET",
          "ITEM_SS_TICKET"
        },
        ["references"] = {
          "pokefirered/data/maps/Route25_SeaCottage/scripts.inc",
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "thief_available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_5"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CERULEAN_CITY_ROCKET",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM28_FROM_ROCKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CERULEAN_ROCKET"
              }
            },
            ["when"] = "ROCKET_THIEF_BATTLE not completed"
          },
          {
            ["id"] = "thief_defeated_reward_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_5"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CERULEAN_CITY_ROCKET",
                ["value"] = 1
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM28_FROM_ROCKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CERULEAN_ROCKET"
              }
            },
            ["when"] = "ROCKET_THIEF_BATTLE completed and TM28_RECOVERY_REWARD in [unseen,available,reward_pending]"
          },
          {
            ["id"] = "tm28_recovered",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_5"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_CERULEAN_CITY_ROCKET",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM28_FROM_ROCKET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_CERULEAN_ROCKET"
              }
            },
            ["when"] = "ROCKET_THIEF_BATTLE completed and TM28_RECOVERY_REWARD completed"
          }
        },
        ["id"] = "CERULEAN_ROCKET",
        ["inputs"] = {
          "CERULEAN.ROCKET_THIEF_BATTLE",
          "CERULEAN.TM28_RECOVERY_REWARD"
        },
        ["owns"] = {
          "TRAINER_TEAM_ROCKET_GRUNT_5",
          "VAR_MAP_SCENE_CERULEAN_CITY_ROCKET",
          "FLAG_GOT_TM28_FROM_ROCKET",
          "FLAG_HIDE_CERULEAN_ROCKET",
          "ITEM_TM28"
        },
        ["references"] = {
          "pokefirered/data/maps/CeruleanCity/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_MT_MOON_TO_CERULEAN_COMPLETE"
  }
}
