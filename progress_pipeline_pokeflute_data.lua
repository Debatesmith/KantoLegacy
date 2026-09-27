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
        ["eventId"] = "CELADON_ARC.ROUTE9_CUT_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:cut_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_9",
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_0",
            "itemsTaken.ROUTE_9_obj_10",
            "visited.LAVENDER_TOWN"
          }
        },
        ["eventId"] = "VISIT.ROUTE_9",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_9_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE9.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROUTE_9_obj_10"
          }
        },
        ["eventId"] = "ROUTE9.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE9.BURN_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE9.HIDDEN_ETHER",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE9.HIDDEN_RARE_CANDY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE9.HIDDEN_CHESTO_BERRY",
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
            "player.map=ROUTE_10",
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_0",
            "visited.ROUTE_10",
            "visited.LAVENDER_TOWN"
          }
        },
        ["eventId"] = "VISIT.ROUTE_10",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_10_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE10.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE10.HIDDEN_SUPER_POTION",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE10.HIDDEN_MAX_ETHER",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE10.HIDDEN_CHERI_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE10.HIDDEN_PERSIM_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE10.HIDDEN_NANAB_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE10.EVERSTONE_AIDE_REWARD",
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
            "player.map=ROCK_TUNNEL_1F",
            "player.map=ROCK_TUNNEL_B1F",
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_0",
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_0",
            "visited.LAVENDER_TOWN"
          }
        },
        ["eventId"] = "VISIT.ROCK_TUNNEL",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_0"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_1"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_2"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_3"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_4"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_5"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_6"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_0"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_1"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_2"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_3"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_4"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_5"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_6"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_7"
          }
        },
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROCK_TUNNEL_1F.REPEL_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCK_TUNNEL_1F.PEARL_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCK_TUNNEL_1F.ESCAPE_ROPE_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCK_TUNNEL_B1F.REVIVE_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCK_TUNNEL_B1F.MAX_ETHER_PICKUP",
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
            "visited.LAVENDER_TOWN",
            "player.map=LAVENDER_TOWN",
            "flags.EVENT_BEAT_POKEMON_TOWER_RIVAL",
            "flags.EVENT_RESCUED_MR_FUJI"
          }
        },
        ["eventId"] = "VISIT.LAVENDER_TOWN",
        ["mode"] = "visit"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=POKEMON_TOWER_1F",
            "player.map=POKEMON_TOWER_2F",
            "player.map=POKEMON_TOWER_3F",
            "player.map=POKEMON_TOWER_4F",
            "player.map=POKEMON_TOWER_5F",
            "player.map=POKEMON_TOWER_6F",
            "player.map=POKEMON_TOWER_7F",
            "flags.EVENT_BEAT_POKEMON_TOWER_RIVAL",
            "flags.EVENT_BEAT_POKEMONTOWER_3_TRAINER_0",
            "flags.EVENT_RESCUED_MR_FUJI"
          }
        },
        ["eventId"] = "VISIT.POKEMON_TOWER",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMON_TOWER_RIVAL"
          }
        },
        ["eventId"] = "POKEMON_TOWER.RIVAL_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_3_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_3_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_3_TRAINER_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_4_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_4_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_4_TRAINER_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_5_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_5_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_5_TRAINER_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_5_TRAINER_3"
          }
        },
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_6_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_6_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_6_TRAINER_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "POKEMON_TOWER.GHOST_GATE_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:ghost_gate_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_GHOST_MAROWAK"
          }
        },
        ["eventId"] = "POKEMON_TOWER.MAROWAK_RESOLUTION",
        ["mode"] = "derived",
        ["value"] = "derive:marowak_resolution"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_7_TRAINER_0"
          }
        },
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_7_TRAINER_1"
          }
        },
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_POKEMONTOWER_7_TRAINER_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["availableAfter"] = {
          "POKEMON_TOWER_7F.ROCKET_SHARED_2"
        },
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_RESCUED_MR_FUJI",
            "flags.EVENT_RESCUED_MR_FUJI_2"
          }
        },
        ["eventId"] = "POKEMON_TOWER.MR_FUJI_RESCUED",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_POKE_FLUTE",
            "inventory.POKE_FLUTE",
            "pcItems.POKE_FLUTE"
          }
        },
        ["eventId"] = "LAVENDER.POKE_FLUTE_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "POKEMON_TOWER.MR_FUJI_RESCUED"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_3F_obj_4"
          }
        },
        ["eventId"] = "POKEMON_TOWER_3F.ESCAPE_ROPE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_4F_obj_4"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.ELIXIR_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_4F_obj_5"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.AWAKENING_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_4F_obj_6"
          }
        },
        ["eventId"] = "POKEMON_TOWER_4F.THIRD_BALL_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_5F_obj_6"
          }
        },
        ["eventId"] = "POKEMON_TOWER_5F.NUGGET_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_6F_obj_4"
          }
        },
        ["eventId"] = "POKEMON_TOWER_6F.RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.POKEMON_TOWER_6F_obj_5"
          }
        },
        ["eventId"] = "POKEMON_TOWER_6F.X_ACCURACY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "POKEMON_TOWER_5F.CLEANSE_TAG_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "POKEMON_TOWER_5F.HIDDEN_BIG_MUSHROOM",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "POKEMON_TOWER_7F.HIDDEN_SOOTHE_BELL",
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
            "player.map=ROUTE_8",
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_0",
            "visited.CELADON_CITY"
          }
        },
        ["eventId"] = "VISIT.ROUTE_8",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_0"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_1"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_2"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_3"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_4"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_5"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_6"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_7"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROUTE_8_TRAINER_8"
          }
        },
        ["eventId"] = "ROUTE8.TRAINER_SHARED_8",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE8.HIDDEN_RAWST_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE8.HIDDEN_LUM_BERRY",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE8.HIDDEN_LEPPA_BERRY",
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
            "player.map=UNDERGROUND_PATH_WEST_EAST",
            "player.map=UNDERGROUND_PATH_ROUTE_8",
            "player.map=UNDERGROUND_PATH_ROUTE_7",
            "visited.CELADON_CITY"
          }
        },
        ["eventId"] = "VISIT.UNDERGROUND_PATH_EAST_WEST",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_POTION",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_PARALYZE_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_AWAKENING",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_BURN_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ICE_HEAL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ETHER",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ANTIDOTE",
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
            "player.map=ROUTE_7",
            "visited.CELADON_CITY"
          }
        },
        ["eventId"] = "VISIT.ROUTE_7",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "ROUTE7.HIDDEN_WEPEAR_BERRY",
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
            "visited.CELADON_CITY",
            "player.map=CELADON_CITY",
            "flags.EVENT_BEAT_ERIKA",
            "flags.EVENT_FOUND_ROCKET_HIDEOUT"
          }
        },
        ["eventId"] = "VISIT.CELADON_CITY",
        ["mode"] = "visit"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_COIN_CASE",
            "inventory.COIN_CASE",
            "pcItems.COIN_CASE"
          }
        },
        ["eventId"] = "CELADON.COIN_CASE_GIFT",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "CELADON.EEVEE_GIFT",
        ["mode"] = "derived",
        ["value"] = "derive:eevee_gift"
      },
      {
        ["eventId"] = "CELADON.TEA_GIFT",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        },
        ["note"] = "Tea is FireRed-only; RBY Saffron access is translated separately."
      },
      {
        ["eventId"] = "CELADON_ARC.SAFFRON_GUARD_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:saffron_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM41"
          }
        },
        ["eventId"] = "CELADON.SOFTBOILED_ROLE_REWARD",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "CELADON.ETHER_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "CELADON.HIDDEN_PP_UP",
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
            "flags.EVENT_GOT_TM13"
          }
        },
        ["eventId"] = "CELADON_DEPT_ROOF.FRESH_WATER_TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM48"
          }
        },
        ["eventId"] = "CELADON_DEPT_ROOF.SODA_POP_TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM49"
          }
        },
        ["eventId"] = "CELADON_DEPT_ROOF.LEMONADE_TM_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_10_COINS"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_10_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_20_COINS"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_20_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_20_COINS_2"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_20_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_0_8"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_1_16"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_3_11"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_3_14"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_4_12"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_9_12"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_9_15"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_16_14"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_7",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_10_16"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_8",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_11_7"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_9",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_15_8"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_10",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "hiddenTaken.GAME_CORNER_12_15"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_11",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "objectToggles.GAME_CORNER.GAMECORNER_ROCKET=false",
            "flags.EVENT_FOUND_ROCKET_HIDEOUT"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.ROCKET_GUARD_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_FOUND_ROCKET_HIDEOUT"
          }
        },
        ["eventId"] = "CELADON_GAME_CORNER.HIDEOUT_ENTRANCE_OPEN",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_0"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_1"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_2"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_3"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_4"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_5"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_5",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_CELADON_GYM_TRAINER_6"
          }
        },
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_6",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ERIKA"
          }
        },
        ["eventId"] = "CELADON_GYM.ERIKA_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ERIKA",
            "inventory.RAINBOWBADGE"
          }
        },
        ["eventId"] = "CELADON_GYM.RAINBOW_BADGE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_TM21"
          }
        },
        ["eventId"] = "CELADON_GYM.TM_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "CELADON_GYM.ERIKA_BATTLE"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROCKET_HIDEOUT_B1F",
            "player.map=ROCKET_HIDEOUT_B2F",
            "player.map=ROCKET_HIDEOUT_B3F",
            "player.map=ROCKET_HIDEOUT_B4F",
            "player.map=ROCKET_HIDEOUT_ELEVATOR",
            "flags.EVENT_ENTERED_ROCKET_HIDEOUT",
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_0",
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI"
          }
        },
        ["eventId"] = "VISIT.ROCKET_HIDEOUT",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_0"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_1"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_2"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_3"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_3",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_4"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_4",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_2_TRAINER_0"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B2F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_3_TRAINER_0"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_3_TRAINER_1"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_0"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_0",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_1"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_1",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_2"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_2",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_9",
            "inventory.LIFT_KEY",
            "pcItems.LIFT_KEY"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT.LIFT_KEY_REWARD",
        ["mode"] = "derived",
        ["pendingAfter"] = {
          "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_2"
        },
        ["value"] = "derive:lift_key_reward"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_ROCKET_HIDEOUT_4_DOOR_UNLOCKED",
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_0",
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_1"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT.B4F_DOOR_OPEN",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT.GIOVANNI_BATTLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_8",
            "inventory.SILPH_SCOPE",
            "pcItems.SILPH_SCOPE"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT.SILPH_SCOPE_REWARD",
        ["mode"] = "exact",
        ["pendingAfter"] = {
          "ROCKET_HIDEOUT.GIOVANNI_BATTLE"
        }
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B1F_obj_6"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.ESCAPE_ROPE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B1F_obj_7"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B1F.HYPER_POTION_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B2F_obj_2"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B2F.FIRST_BALL_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B2F_obj_3"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B2F.SECOND_BALL_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B2F_obj_4"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B2F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B2F_obj_5"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B2F.SUPER_POTION_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B3F_obj_3"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B3F_obj_4"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B3F.RARE_CANDY_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_6"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TM_ROLE_PICKUP",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_5"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.SECOND_BALL_ROLE",
        ["mode"] = "exact"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_7"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT_B4F.THIRD_BALL_ROLE",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROCKET_HIDEOUT_B1F.HIDDEN_PP_UP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCKET_HIDEOUT_B3F.BLACK_GLASSES_PICKUP",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCKET_HIDEOUT_B3F.HIDDEN_NUGGET",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCKET_HIDEOUT_B4F.HIDDEN_NEST_BALL",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROCKET_HIDEOUT_B4F.HIDDEN_NET_BALL",
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
            "flags.EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI",
            "itemsTaken.ROCKET_HIDEOUT_B4F_obj_8"
          }
        },
        ["eventId"] = "ROCKET_HIDEOUT.CLEARED",
        ["mode"] = "derived"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "player.map=ROUTE_16",
            "player.map=ROUTE_16_FLY_HOUSE",
            "flags.EVENT_GOT_HM02",
            "visited.FUCHSIA_CITY"
          }
        },
        ["eventId"] = "VISIT.ROUTE_16_EAST",
        ["mode"] = "derived"
      },
      {
        ["eventId"] = "ROUTE16.FLY_HOUSE_CUT_ACCESS",
        ["mode"] = "derived",
        ["value"] = "derive:cut_access"
      },
      {
        ["completedAny"] = {
          ["all"] = {
            "flags.EVENT_GOT_HM02",
            "inventory.HM_FLY",
            "pcItems.HM_FLY"
          }
        },
        ["eventId"] = "ROUTE16.HM02_FLY_REWARD",
        ["mode"] = "exact"
      },
      {
        ["eventId"] = "ROUTE16.AMULET_COIN_AIDE_REWARD",
        ["mode"] = "target_default",
        ["notApplicableVersions"] = {
          "red",
          "blue",
          "yellow"
        }
      },
      {
        ["eventId"] = "ROUTE16.SNORLAX_BOUNDARY",
        ["mode"] = "derived",
        ["value"] = "derive:snorlax_boundary"
      },
      {
        ["eventId"] = "CELADON_TOWER_ARC.SNORLAX_CHOICES_UNLOCKED",
        ["mode"] = "derived",
        ["value"] = "derive:snorlax_choices"
      }
    },
    ["rulesVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_ROUTE9_TO_POKE_FLUTE_COMPLETE"
  },
  ["generatedFrom"] = {
    ["evidence"] = "route9-to-pokeflute.rby.evidence.json",
    ["materialization"] = "route9-to-pokeflute.firered.rules.json"
  },
  ["rules"] = {
    ["eventRules"] = {
      {
        ["disposition"] = "location_only",
        ["eventId"] = "CELADON_ARC.ROUTE9_CUT_ACCESS",
        ["notes"] = {
          "Reconstructed from inherited field access or owned trainer state; no extra persistent bit is safe."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_9",
        ["notes"] = {
          "No distinct durable FireRed world-map flag; location conversion preserves placement."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_ALICIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_CAMPER_CHRIS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_CAMPER_DREW"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_CAITLIN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_JEREMY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_BRICE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_BRENT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_ALAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route9/scripts.inc"
        },
        ["target"] = "TRAINER_BUG_CATCHER_CONNER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE9.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROUTE9_TM40"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE9.BURN_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROUTE9_BURN_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE9.HIDDEN_ETHER",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE9_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE9.HIDDEN_RARE_CANDY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE9_RARE_CANDY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE9.HIDDEN_CHESTO_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE9_CHESTO_BERRY"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_10",
        ["notes"] = {
          "No distinct durable FireRed world-map flag; location conversion preserves placement."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_MARK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_CLARK"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_HERMAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_HEIDI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_TRENT"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE10.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route10/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_CAROL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.HIDDEN_SUPER_POTION",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE10_SUPER_POTION"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.HIDDEN_MAX_ETHER",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE10_MAX_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.HIDDEN_CHERI_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE10_CHERI_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.HIDDEN_PERSIM_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE10_PERSIM_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.HIDDEN_NANAB_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE10_NANAB_BERRY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_EVERSTONE_FROM_OAKS_AIDE"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_EVERSTONE"
          }
        },
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE10.EVERSTONE_AIDE_REWARD",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_EVERSTONE_FROM_OAKS_AIDE",
          "ITEM_EVERSTONE"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.ROCK_TUNNEL",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_ROCK_TUNNEL_1F"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_LENNY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_OLIVER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_LUCAS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_ASHTON"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_LEAH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_DANA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_1F.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_1F/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_ARIANA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_SOFIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_DUDLEY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_COOPER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_STEVE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_ALLEN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_MARTHA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_HIKER_ERIC"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCK_TUNNEL_B1F.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RockTunnel_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_POKEMANIAC_WINSTON"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCK_TUNNEL_1F.REPEL_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCK_TUNNEL_1F_REPEL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCK_TUNNEL_1F.PEARL_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCK_TUNNEL_1F_PEARL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCK_TUNNEL_1F.ESCAPE_ROPE_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCK_TUNNEL_1F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCK_TUNNEL_B1F.REVIVE_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCK_TUNNEL_B1F_REVIVE"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCK_TUNNEL_B1F.MAX_ETHER_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCK_TUNNEL_B1F_MAX_ETHER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.LAVENDER_TOWN",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_LAVENDER_TOWN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.POKEMON_TOWER",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_POKEMON_TOWER_1F"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_TOWER.RIVAL_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "POKEMON_TOWER_RIVAL",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_3F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_HOPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_3F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_CARLY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_3F.CHANNELER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_3F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_PATRICIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_4F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_PAULA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_4F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_LAUREL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.CHANNELER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_4F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_JODY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_5F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_TAMMY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_5F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_RUTH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_5F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_KARINA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_5F.CHANNELER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_5F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_JANAE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_6F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_ANGELICA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_6F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_JENNIFER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_6F.CHANNELER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_6F/scripts.inc"
        },
        ["target"] = "TRAINER_CHANNELER_EMILIA"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_TOWER.GHOST_GATE_ACCESS",
        ["profile"] = "reducer_input",
        ["reducer"] = "POKEMON_TOWER_GHOST",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_TOWER.MAROWAK_RESOLUTION",
        ["profile"] = "reducer_input",
        ["reducer"] = "POKEMON_TOWER_GHOST",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_19"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_20"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_7F.ROCKET_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_7F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_21"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "POKEMON_TOWER.MR_FUJI_RESCUED",
        ["profile"] = "reducer_input",
        ["reducer"] = "MR_FUJI_STATE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_POKE_FLUTE"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_POKE_FLUTE"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_POKE_FLUTE"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "LAVENDER.POKE_FLUTE_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_POKE_FLUTE",
          "ITEM_POKE_FLUTE"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_3F.ESCAPE_ROPE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_3F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.ELIXIR_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_4F_ELIXIR"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.AWAKENING_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_4F_AWAKENING"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_4F.THIRD_BALL_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_4F_GREAT_BALL"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_5F.NUGGET_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_5F_NUGGET"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_6F.RARE_CANDY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_6F_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "POKEMON_TOWER_6F.X_ACCURACY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_6F_X_ACCURACY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "POKEMON_TOWER_5F.CLEANSE_TAG_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_POKEMON_TOWER_5F_CLEANSE_TAG"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "POKEMON_TOWER_5F.HIDDEN_BIG_MUSHROOM",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POKEMON_TOWER_5F_BIG_MUSHROOM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "POKEMON_TOWER_7F.HIDDEN_SOOTHE_BELL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_POKEMON_TOWER_7F_SOOTHE_BELL"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_8",
        ["notes"] = {
          "No distinct durable FireRed world-map flag; location conversion preserves placement."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_SUPER_NERD_AIDAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_GAMER_STAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_SUPER_NERD_GLENN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_PAIGE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_SUPER_NERD_LESLIE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_ANDREA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_MEGAN"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_7",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_GAMER_RICH"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE8.TRAINER_SHARED_8",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/Route8/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_JULIA"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE8.HIDDEN_RAWST_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE8_RAWST_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE8.HIDDEN_LUM_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE8_LUM_BERRY"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE8.HIDDEN_LEPPA_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE8_LEPPA_BERRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.UNDERGROUND_PATH_EAST_WEST",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_UNDERGROUND_PATH_EAST_WEST_TUNNEL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_POTION",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_POTION"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_PARALYZE_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_PARALYZE_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_AWAKENING",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_AWAKENING"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_BURN_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_BURN_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ICE_HEAL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_ICE_HEAL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ETHER",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "UNDERGROUND_PATH_EW.HIDDEN_ANTIDOTE",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_UNDERGROUND_PATH_EAST_WEST_TUNNEL_ANTIDOTE"
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_7",
        ["notes"] = {
          "No distinct durable FireRed world-map flag; location conversion preserves placement."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE7.HIDDEN_WEPEAR_BERRY",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROUTE7_WEPEAR_BERRY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.CELADON_CITY",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_CELADON_CITY"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_COIN_CASE"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_COIN_CASE"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_COIN_CASE"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CELADON.COIN_CASE_GIFT",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_COIN_CASE",
          "ITEM_COIN_CASE"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON.EEVEE_GIFT",
        ["profile"] = "external_pokemon",
        ["reducer"] = "CELADON_EEVEE",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON.TEA_GIFT",
        ["profile"] = "external_item",
        ["reducer"] = "CELADON_TEA_ACCESS",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_ARC.SAFFRON_GUARD_ACCESS",
        ["profile"] = "reducer_input",
        ["reducer"] = "CELADON_TEA_ACCESS",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON.SOFTBOILED_ROLE_REWARD",
        ["profile"] = "boolean_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity/scripts.inc"
        },
        ["target"] = "FLAG_TUTOR_SOFT_BOILED"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "CELADON.ETHER_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_CELADON_CITY_ETHER"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "CELADON.HIDDEN_PP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_PP_UP"
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_TM16_FROM_THIRSTY_GIRL"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_TM16_FROM_THIRSTY_GIRL"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_DEPT_ROOF.FRESH_WATER_TM_ROLE",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_DepartmentStore_Roof/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_TM16_FROM_THIRSTY_GIRL",
          "ITEM_TM16"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_TM20_FROM_THIRSTY_GIRL"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_TM20_FROM_THIRSTY_GIRL"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_DEPT_ROOF.SODA_POP_TM_ROLE",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_DepartmentStore_Roof/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_TM20_FROM_THIRSTY_GIRL",
          "ITEM_TM20"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_TM33_FROM_THIRSTY_GIRL"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_TM33_FROM_THIRSTY_GIRL"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_DEPT_ROOF.LEMONADE_TM_ROLE",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_DepartmentStore_Roof/scripts.inc"
        },
        ["targets"] = {
          "FLAG_GOT_TM33_FROM_THIRSTY_GIRL",
          "ITEM_TM33"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_10_0",
        ["notes"] = {
          "Coin balance itself is collection-owned."
        },
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/scripts.inc"
        },
        ["target"] = "FLAG_GOT_10_COINS_FROM_GAMBLER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_20_1",
        ["notes"] = {
          "Coin balance itself is collection-owned."
        },
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/scripts.inc"
        },
        ["target"] = "FLAG_GOT_20_COINS_FROM_GAMBLER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.NPC_COINS_20_2",
        ["notes"] = {
          "Coin balance itself is collection-owned."
        },
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/scripts.inc"
        },
        ["target"] = "FLAG_GOT_20_COINS_FROM_GAMBLER_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_0",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_1",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_2"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_2",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_3"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_3",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_4"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_4",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_5"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_5",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_6"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_6",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_7"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_7",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_8"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_8",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_9"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_9",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_10"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_10",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_11"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GAME_CORNER.HIDDEN_COINS_11",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/map.json"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_CELADON_CITY_GAME_CORNER_COINS_12"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_GAME_CORNER.ROCKET_GUARD_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "GAME_CORNER_HIDEOUT_ENTRY",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_GAME_CORNER.HIDEOUT_ENTRANCE_OPEN",
        ["profile"] = "reducer_input",
        ["reducer"] = "GAME_CORNER_HIDEOUT_ENTRY",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_KAY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BEAUTY_BRIDGET"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_PICNICKER_TINA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BEAUTY_TAMIA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_LASS_LISA"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_5",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_BEAUTY_LORI"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "CELADON_GYM.TRAINER_SHARED_6",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        },
        ["target"] = "TRAINER_COOLTRAINER_MARY"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_GYM.ERIKA_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CELADON_ERIKA",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_GYM.RAINBOW_BADGE",
        ["profile"] = "reducer_input",
        ["reducer"] = "CELADON_ERIKA",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_GYM.TM_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "CELADON_ERIKA",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "VISIT.ROCKET_HIDEOUT",
        ["profile"] = "world_map_visit",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_WORLD_MAP_ROCKET_HIDEOUT_B1F"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_8"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_9"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_10"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_3",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_11"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.TRAINER_SHARED_4",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B1F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_12"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B2F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B2F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_13"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B3F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_14"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B3F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_15"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_0",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B4F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_16"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_1",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B4F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_17"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TRAINER_SHARED_2",
        ["profile"] = "trainer_base",
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B4F/scripts.inc"
        },
        ["target"] = "TRAINER_TEAM_ROCKET_GRUNT_18"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROCKET_HIDEOUT.LIFT_KEY_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "ROCKET_LIFT_KEY",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "ROCKET_HIDEOUT.B4F_DOOR_OPEN",
        ["notes"] = {
          "Reconstructed from inherited field access or owned trainer state; no extra persistent bit is safe."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROCKET_HIDEOUT.GIOVANNI_BATTLE",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROCKET_HIDEOUT_GIOVANNI",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROCKET_HIDEOUT.SILPH_SCOPE_REWARD",
        ["profile"] = "external_item",
        ["reducer"] = "ROCKET_HIDEOUT_GIOVANNI",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.ESCAPE_ROPE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B1F_ESCAPE_ROPE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.HYPER_POTION_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B1F_HYPER_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B2F.FIRST_BALL_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B2F_X_SPEED"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B2F.SECOND_BALL_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B2F_MOON_STONE"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B2F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B2F_TM12"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B2F.SUPER_POTION_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B2F_SUPER_POTION"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B3F_TM21"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.RARE_CANDY_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B3F_RARE_CANDY"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.TM_ROLE_PICKUP",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B4F_TM49"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.SECOND_BALL_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B4F_MAX_ETHER"
      },
      {
        ["disposition"] = "direct",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.THIRD_BALL_ROLE",
        ["profile"] = "pickup_hide_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B4F_CALCIUM"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCKET_HIDEOUT_B1F.HIDDEN_PP_UP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROCKET_HIDEOUT_B1F_PP_UP"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.BLACK_GLASSES_PICKUP",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDE_ROCKET_HIDEOUT_B3F_BLACK_GLASSES"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCKET_HIDEOUT_B3F.HIDDEN_NUGGET",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROCKET_HIDEOUT_B3F_NUGGET"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.HIDDEN_NEST_BALL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROCKET_HIDEOUT_B4F_NEST_BALL"
      },
      {
        ["disposition"] = "target_default",
        ["eventId"] = "ROCKET_HIDEOUT_B4F.HIDDEN_NET_BALL",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        },
        ["target"] = "FLAG_HIDDEN_ITEM_ROCKET_HIDEOUT_B4F_NET_BALL"
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROCKET_HIDEOUT.CLEARED",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROCKET_HIDEOUT_GIOVANNI",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "VISIT.ROUTE_16_EAST",
        ["notes"] = {
          "No distinct durable FireRed world-map flag; location conversion preserves placement."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["disposition"] = "location_only",
        ["eventId"] = "ROUTE16.FLY_HOUSE_CUT_ACCESS",
        ["notes"] = {
          "Reconstructed from inherited field access or owned trainer state; no extra persistent bit is safe."
        },
        ["profile"] = "location_only",
        ["references"] = {
          "pokefirered/data/maps"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_HM02"
          }
        },
        ["completeOperations"] = {
          {
            ["op"] = "set_flag",
            ["symbol"] = "FLAG_GOT_HM02"
          },
          {
            ["op"] = "ensure_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_HM02"
          }
        },
        ["disposition"] = "direct",
        ["eventId"] = "ROUTE16.HM02_FLY_REWARD",
        ["profile"] = "reward_flag",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_HM02",
          "ITEM_HM02"
        }
      },
      {
        ["availableOperations"] = {
          {
            ["op"] = "clear_flag",
            ["symbol"] = "FLAG_GOT_AMULET_COIN_FROM_OAKS_AIDE"
          },
          {
            ["op"] = "remove_item",
            ["quantity"] = 1,
            ["symbol"] = "ITEM_AMULET_COIN"
          }
        },
        ["disposition"] = "target_default",
        ["eventId"] = "ROUTE16.AMULET_COIN_AIDE_REWARD",
        ["profile"] = "target_default_available",
        ["references"] = {
          "pokefirered/include/constants/flags.h",
          "pokefirered/include/constants/items.h"
        },
        ["targets"] = {
          "FLAG_GOT_AMULET_COIN_FROM_OAKS_AIDE",
          "ITEM_AMULET_COIN"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "ROUTE16.SNORLAX_BOUNDARY",
        ["profile"] = "reducer_input",
        ["reducer"] = "ROUTE16_SNORLAX_BOUNDARY",
        ["references"] = {
          "pokefirered/include/constants/flags.h"
        }
      },
      {
        ["disposition"] = "reducer_input",
        ["eventId"] = "CELADON_TOWER_ARC.SNORLAX_CHOICES_UNLOCKED",
        ["profile"] = "reducer_input",
        ["protectedTargets"] = {
          "FLAG_HIDE_ROUTE_12_SNORLAX",
          "FLAG_WOKE_UP_ROUTE_12_SNORLAX"
        },
        ["reducer"] = "ROUTE16_SNORLAX_BOUNDARY",
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
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_TOWER_2F",
                ["value"] = 0
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_TOWER_RIVAL"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_SQUIRTLE"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_BULBASAUR"
              },
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_CHARMANDER"
              }
            },
            ["when"] = "RIVAL_BATTLE not completed"
          },
          {
            ["id"] = "completed",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_TOWER_2F",
                ["value"] = 1
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_TOWER_RIVAL"
              }
            },
            ["valueOperationsByPlayerStarter"] = {
              ["bulbasaur"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_CHARMANDER"
                }
              },
              ["charmander"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_SQUIRTLE"
                }
              },
              ["squirtle"] = {
                {
                  ["op"] = "set_trainer_defeated",
                  ["symbol"] = "TRAINER_RIVAL_POKEMON_TOWER_BULBASAUR"
                }
              }
            },
            ["when"] = "RIVAL_BATTLE completed"
          }
        },
        ["id"] = "POKEMON_TOWER_RIVAL",
        ["inputs"] = {
          "POKEMON_TOWER.RIVAL_BATTLE"
        },
        ["notes"] = {
          "Uses the inherited supported starter branch; party composition is never used to guess the rival team."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_POKEMON_TOWER_2F",
          "FLAG_HIDE_TOWER_RIVAL",
          "TRAINER_RIVAL_POKEMON_TOWER_SQUIRTLE",
          "TRAINER_RIVAL_POKEMON_TOWER_BULBASAUR",
          "TRAINER_RIVAL_POKEMON_TOWER_CHARMANDER"
        },
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_2F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "marowak_present",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_TOWER_6F",
                ["value"] = 0
              }
            },
            ["when"] = "MAROWAK_RESOLUTION not completed"
          },
          {
            ["id"] = "marowak_resolved",
            ["operations"] = {
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_POKEMON_TOWER_6F",
                ["value"] = 1
              }
            },
            ["when"] = "MAROWAK_RESOLUTION completed"
          }
        },
        ["id"] = "POKEMON_TOWER_GHOST",
        ["inputs"] = {
          "POKEMON_TOWER.GHOST_GATE_ACCESS",
          "POKEMON_TOWER.MAROWAK_RESOLUTION"
        },
        ["notes"] = {
          "Silph Scope access and the RBY Poke Doll bypass are evidence routes, not permission to fabricate ITEM_SILPH_SCOPE."
        },
        ["owns"] = {
          "VAR_MAP_SCENE_POKEMON_TOWER_6F"
        },
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_6F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "captive",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_TOWER_FUJI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_POKEHOUSE_FUJI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_RESCUED_MR_FUJI"
              }
            },
            ["when"] = "MR_FUJI_RESCUED not completed"
          },
          {
            ["id"] = "rescued",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_TOWER_FUJI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_POKEHOUSE_FUJI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_RESCUED_MR_FUJI"
              }
            },
            ["when"] = "MR_FUJI_RESCUED completed"
          }
        },
        ["id"] = "MR_FUJI_STATE",
        ["inputs"] = {
          "POKEMON_TOWER.MR_FUJI_RESCUED"
        },
        ["owns"] = {
          "FLAG_HIDE_TOWER_FUJI",
          "FLAG_HIDE_POKEHOUSE_FUJI",
          "FLAG_RESCUED_MR_FUJI"
        },
        ["references"] = {
          "pokefirered/data/maps/PokemonTower_7F/scripts.inc",
          "pokefirered/data/maps/LavenderTown_VolunteerPokemonHouse/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "tea_available",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TEA"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_TEA"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE5_ROUTE6_ROUTE7_ROUTE8_GATES",
                ["value"] = 0
              }
            },
            ["when"] = "TEA_GIFT not completed and SAFFRON_GUARD_ACCESS not completed"
          },
          {
            ["id"] = "tea_held",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TEA"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_TEA"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE5_ROUTE6_ROUTE7_ROUTE8_GATES",
                ["value"] = 0
              }
            },
            ["when"] = "TEA_GIFT completed and SAFFRON_GUARD_ACCESS not completed"
          },
          {
            ["id"] = "guards_open",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TEA"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_TEA"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE5_ROUTE6_ROUTE7_ROUTE8_GATES",
                ["value"] = 1
              }
            },
            ["when"] = "SAFFRON_GUARD_ACCESS completed"
          }
        },
        ["id"] = "CELADON_TEA_ACCESS",
        ["inputs"] = {
          "CELADON.TEA_GIFT",
          "CELADON_ARC.SAFFRON_GUARD_ACCESS"
        },
        ["owns"] = {
          "FLAG_GOT_TEA",
          "ITEM_TEA",
          "VAR_MAP_SCENE_ROUTE5_ROUTE6_ROUTE7_ROUTE8_GATES"
        },
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Condominiums_1F/scripts.inc",
          "pokefirered/data/maps/Route7_EastEntrance/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_EEVEE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_EEVEE_BALL"
              }
            },
            ["when"] = "EEVEE_GIFT not completed"
          },
          {
            ["id"] = "claimed",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_EEVEE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_EEVEE_BALL"
              }
            },
            ["when"] = "EEVEE_GIFT completed and collection payload converted"
          }
        },
        ["id"] = "CELADON_EEVEE",
        ["inputs"] = {
          "CELADON.EEVEE_GIFT"
        },
        ["notes"] = {
          "A claimed source state blocks commit unless the collection layer carried the Eevee payload."
        },
        ["owns"] = {
          "FLAG_GOT_EEVEE",
          "FLAG_HIDE_EEVEE_BALL"
        },
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Condominiums_RoofRoom/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "guard_present",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_7"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_GAME_CORNER_ROCKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_OPENED_ROCKET_HIDEOUT"
              }
            },
            ["when"] = "ROCKET_GUARD_BATTLE not completed"
          },
          {
            ["id"] = "switch_available",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_7"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_GAME_CORNER_ROCKET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_OPENED_ROCKET_HIDEOUT"
              }
            },
            ["when"] = "ROCKET_GUARD_BATTLE completed and HIDEOUT_ENTRANCE_OPEN not completed"
          },
          {
            ["id"] = "entrance_open",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_TEAM_ROCKET_GRUNT_7"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_GAME_CORNER_ROCKET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_OPENED_ROCKET_HIDEOUT"
              }
            },
            ["when"] = "HIDEOUT_ENTRANCE_OPEN completed"
          }
        },
        ["id"] = "GAME_CORNER_HIDEOUT_ENTRY",
        ["inputs"] = {
          "CELADON_GAME_CORNER.ROCKET_GUARD_BATTLE",
          "CELADON_GAME_CORNER.HIDEOUT_ENTRANCE_OPEN"
        },
        ["owns"] = {
          "TRAINER_TEAM_ROCKET_GRUNT_7",
          "FLAG_HIDE_GAME_CORNER_ROCKET",
          "FLAG_OPENED_ROCKET_HIDEOUT"
        },
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_GameCorner/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "available",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_ERIKA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_DEFEATED_ERIKA"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_BADGE04_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM19_FROM_ERIKA"
              }
            },
            ["when"] = "ERIKA_BATTLE not completed"
          },
          {
            ["id"] = "defeated_tm_pending",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_ERIKA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_ERIKA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE04_GET"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_GOT_TM19_FROM_ERIKA"
              }
            },
            ["when"] = "ERIKA_BATTLE completed and RAINBOW_BADGE completed and TM_REWARD not completed"
          },
          {
            ["id"] = "complete",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_LEADER_ERIKA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_DEFEATED_ERIKA"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_BADGE04_GET"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_GOT_TM19_FROM_ERIKA"
              }
            },
            ["when"] = "ERIKA_BATTLE completed and RAINBOW_BADGE completed and TM_REWARD completed"
          }
        },
        ["id"] = "CELADON_ERIKA",
        ["inputs"] = {
          "CELADON_GYM.ERIKA_BATTLE",
          "CELADON_GYM.RAINBOW_BADGE",
          "CELADON_GYM.TM_REWARD"
        },
        ["owns"] = {
          "TRAINER_LEADER_ERIKA",
          "FLAG_DEFEATED_ERIKA",
          "FLAG_BADGE04_GET",
          "FLAG_GOT_TM19_FROM_ERIKA",
          "ITEM_TM19"
        },
        ["references"] = {
          "pokefirered/data/maps/CeladonCity_Gym/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "unclaimed",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_CAN_USE_ROCKET_HIDEOUT_LIFT"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_LIFT_KEY"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_LIFT_KEY"
              }
            },
            ["when"] = "LIFT_KEY_REWARD not completed"
          },
          {
            ["id"] = "claimed",
            ["operations"] = {
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_CAN_USE_ROCKET_HIDEOUT_LIFT"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_LIFT_KEY"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_LIFT_KEY"
              }
            },
            ["when"] = "LIFT_KEY_REWARD completed"
          }
        },
        ["id"] = "ROCKET_LIFT_KEY",
        ["inputs"] = {
          "ROCKET_HIDEOUT.LIFT_KEY_REWARD"
        },
        ["owns"] = {
          "FLAG_CAN_USE_ROCKET_HIDEOUT_LIFT",
          "FLAG_HIDE_LIFT_KEY",
          "ITEM_LIFT_KEY"
        },
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B4F/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "giovanni_present",
            ["operations"] = {
              {
                ["op"] = "clear_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_HIDEOUT_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_SCOPE"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_SILPH_SCOPE"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_CELADON_ROCKETS"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_MISC_KANTO_ROCKETS"
              }
            },
            ["when"] = "GIOVANNI_BATTLE not completed"
          },
          {
            ["id"] = "scope_available",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_HIDEOUT_GIOVANNI"
              },
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_SCOPE"
              },
              {
                ["op"] = "remove_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_SILPH_SCOPE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_CELADON_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_MISC_KANTO_ROCKETS"
              }
            },
            ["when"] = "GIOVANNI_BATTLE completed and SILPH_SCOPE_REWARD not completed"
          },
          {
            ["id"] = "scope_claimed",
            ["operations"] = {
              {
                ["op"] = "set_trainer_defeated",
                ["symbol"] = "TRAINER_BOSS_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_HIDEOUT_GIOVANNI"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_SILPH_SCOPE"
              },
              {
                ["op"] = "ensure_item",
                ["quantity"] = 1,
                ["symbol"] = "ITEM_SILPH_SCOPE"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_CELADON_ROCKETS"
              },
              {
                ["op"] = "set_flag",
                ["symbol"] = "FLAG_HIDE_MISC_KANTO_ROCKETS"
              }
            },
            ["when"] = "SILPH_SCOPE_REWARD completed"
          }
        },
        ["id"] = "ROCKET_HIDEOUT_GIOVANNI",
        ["inputs"] = {
          "ROCKET_HIDEOUT.GIOVANNI_BATTLE",
          "ROCKET_HIDEOUT.SILPH_SCOPE_REWARD",
          "ROCKET_HIDEOUT.CLEARED"
        },
        ["owns"] = {
          "TRAINER_BOSS_GIOVANNI",
          "FLAG_HIDE_HIDEOUT_GIOVANNI",
          "FLAG_HIDE_SILPH_SCOPE",
          "ITEM_SILPH_SCOPE",
          "FLAG_HIDE_CELADON_ROCKETS",
          "FLAG_HIDE_MISC_KANTO_ROCKETS"
        },
        ["references"] = {
          "pokefirered/data/maps/RocketHideout_B4F/scripts.inc",
          "pokefirered/data/maps/CeladonCity/scripts.inc"
        }
      },
      {
        ["cases"] = {
          {
            ["id"] = "untouched",
            ["operations"] = {
              {
                ["op"] = "clear_flag",
                ["symbol"] = "FLAG_HIDE_ROUTE_16_SNORLAX"
              },
              {
                ["op"] = "set_var",
                ["symbol"] = "VAR_MAP_SCENE_ROUTE16",
                ["value"] = 0
              }
            },
            ["when"] = "SNORLAX_BOUNDARY.value == sleeping_untouched"
          }
        },
        ["id"] = "ROUTE16_SNORLAX_BOUNDARY",
        ["inputs"] = {
          "ROUTE16.SNORLAX_BOUNDARY",
          "CELADON_TOWER_ARC.SNORLAX_CHOICES_UNLOCKED"
        },
        ["notes"] = {
          "Slice boundary forbids defeated/caught Snorlax states; both overworld Snorlax remain native and untouched."
        },
        ["owns"] = {
          "FLAG_HIDE_ROUTE_16_SNORLAX",
          "VAR_MAP_SCENE_ROUTE16"
        },
        ["references"] = {
          "pokefirered/data/maps/Route16/scripts.inc"
        }
      }
    },
    ["ruleTableVersion"] = "1.0.0",
    ["sliceId"] = "KANTO_ROUTE9_TO_POKE_FLUTE_COMPLETE"
  }
}
