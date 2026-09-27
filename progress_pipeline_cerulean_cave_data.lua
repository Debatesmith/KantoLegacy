-- Generated; edit reviewed JSON tables and rerun exporter.
return {
  ["evidence"] = {
    ["$schema"] = "source-evidence-rules.schema.json",
    ["closedWorldRoots"] = {
      "flags",
      "visited",
      "itemsTaken",
      "hiddenTaken",
      "pokedex",
      "party",
      "boxes",
      "player",
      "hallOfFame",
      "postGameHomeOk"
    },
    ["eventRules"] = {
      {
        ["eventId"] = "VISIT.CERULEAN_CAVE_1F",
        ["mode"] = "derived",
        ["value"] = "derive:cave_activity"
      },
      {
        ["eventId"] = "VISIT.CERULEAN_CAVE_2F",
        ["mode"] = "derived",
        ["value"] = "derive:cave_activity"
      },
      {
        ["eventId"] = "VISIT.CERULEAN_CAVE_B1F",
        ["mode"] = "derived",
        ["value"] = "derive:cave_activity"
      },
      {
        ["eventId"] = "CERULEAN_CAVE.ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:hall_of_fame_access"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_1F_obj_1"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_1F.FULL_RESTORE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_1F_obj_2"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_1F.MAX_ELIXIR",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_1F_obj_3"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_1F.NUGGET",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_2F_obj_1"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_2F.PP_UP",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_2F_obj_2"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_2F.ULTRA_BALL",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_2F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_2F_obj_3"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_2F.FULL_RESTORE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_B1F_obj_2"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_B1F.ULTRA_BALL",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.CERULEAN_CAVE_B1F_obj_3"
          }
        },
        ["eventId"] = "CERULEAN_CAVE_B1F.MAX_REVIVE",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "VISIT.CERULEAN_CAVE_B1F"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_MEWTWO"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.MEWTWO_RESOLVED",
        ["mode"] = "exact",
        ["value"] = "removed_outcome_unknown"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.CERULEAN_CAVE_1F_14_11"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_RB_1F",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "yellow"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.CERULEAN_CAVE_B1F_27_3"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_RB_B1F",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "yellow"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.CERULEAN_CAVE_1F_18_7"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_1F",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "red",
          "blue"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.CERULEAN_CAVE_2F_16_13"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_2F",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "red",
          "blue"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.CERULEAN_CAVE_B1F_8_14"
          }
        },
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_B1F",
        ["mode"] = "exact",
        ["notApplicableVersions"] = {
          "red",
          "blue"
        }
      },
      {
        ["eventId"] = "RBY_POSTGAME.COMPLETE",
        ["mode"] = "derived",
        ["value"] = "derive:mewtwo_resolved"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_CERULEAN_CAVE_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "cerulean-cave.rby.evidence.json",
    ["materialization"] = "cerulean-cave.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CERULEAN_CAVE_1F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CERULEAN_CAVE_2F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.CERULEAN_CAVE_B1F",
        ["profile"] = "location",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "audit_only",
        ["eventId"] = "CERULEAN_CAVE.ACCESS",
        ["note"] = "RBY access is evidence only; FireRed's FLAG_SYS_CAN_LINK_WITH_RS and guard remain native.",
        ["profile"] = "gate",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_1F.FULL_RESTORE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_1F_FULL_RESTORE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_1F.MAX_ELIXIR",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_1F_MAX_ELIXIR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_1F.NUGGET",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_1F_NUGGET"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_2F.PP_UP",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_2F_PP_UP"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_2F.ULTRA_BALL",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_2F_ULTRA_BALL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_2F.FULL_RESTORE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_2F_FULL_RESTORE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_B1F.ULTRA_BALL",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_B1F_ULTRA_BALL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE_B1F.MAX_REVIVE",
        ["profile"] = "pickup",
        ["references"] = {
          "pokefirered/data/scripts/item_ball_scripts.inc"
        },
        ["target"] = "FLAG_HIDE_CERULEAN_CAVE_B1F_MAX_REVIVE"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_FOUGHT_MEWTWO"
          },
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_HIDE_MEWTWO"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_FOUGHT_MEWTWO"
          },
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_HIDE_MEWTWO"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CERULEAN_CAVE.MEWTWO_RESOLVED",
        ["profile"] = "legendary",
        ["references"] = {
          "pokefirered/data/maps/CeruleanCave_B1F/scripts.inc"
        },
        ["targets"] = {
          "FLAG_FOUGHT_MEWTWO",
          "FLAG_HIDE_MEWTWO"
        }
      },
      {
        ["disposition"] = "lossy_no_write",
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_RB_1F",
        ["note"] = "RBY version-specific hidden pickup has no exact FireRed counterpart; FireRed's hidden Ultra Ball remains playable.",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "lossy_no_write",
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_RB_B1F",
        ["note"] = "RBY version-specific hidden pickup has no exact FireRed counterpart; FireRed's hidden Ultra Ball remains playable.",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "lossy_no_write",
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_1F",
        ["note"] = "RBY version-specific hidden pickup has no exact FireRed counterpart; FireRed's hidden Ultra Ball remains playable.",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "lossy_no_write",
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_2F",
        ["note"] = "RBY version-specific hidden pickup has no exact FireRed counterpart; FireRed's hidden Ultra Ball remains playable.",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "lossy_no_write",
        ["eventId"] = "CERULEAN_CAVE.HIDDEN_YELLOW_B1F",
        ["note"] = "RBY version-specific hidden pickup has no exact FireRed counterpart; FireRed's hidden Ultra Ball remains playable.",
        ["profile"] = "audit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "RBY_POSTGAME.COMPLETE",
        ["profile"] = "boundary",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      }
    },
    ["reducers"] = {},
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_CERULEAN_CAVE_COMPLETE"
  }
}
