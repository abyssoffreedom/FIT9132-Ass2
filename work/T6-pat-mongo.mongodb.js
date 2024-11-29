// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pat-mongo.mongodb.js

// Student ID:35009411
// Student Name:Shuyang Yan

//Comments for your marker:

// ===================================================================================
// Do not add new comments to this playground
// OR modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("syan0170");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.driver.drop();

// Create collection and insert documents
db.driver.insertMany([
  {
    "_id": 2001,
    "name": "Pierre Martin",
    "licence_num": "120501123456",
    "no_of_trips": 3,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 1,
        "veh_vin": "qwhgjnsutvdjnfru1",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 09:00",
          "actual_datetime": "21/07/2024 09:00"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "21/07/2024 10:00",
          "actual_datetime": "21/07/2024 10:00"
        }
      },
      {
        "trip_id": 18,
        "veh_vin": "hhhhhhhhhhhhhhh10",
        "pick-up": {
          "location_id": 109,
          "location_name": "Paris La Defense Arena",
          "intended_datetime": "23/07/2024 14:00",
          "actual_datetime": "23/07/2024 14:00"
        },
        "drop off": {
          "location_id": 110,
          "location_name": "Pierre Mauroy Stadium",
          "intended_datetime": "23/07/2024 15:00",
          "actual_datetime": "23/07/2024 15:00"
        }
      },
      {
        "trip_id": 20,
        "veh_vin": "hhhhhhhhhhhhhhh10",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "22/07/2024 09:00",
          "actual_datetime": "22/07/2024 08:30"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "22/07/2024 10:00",
          "actual_datetime": "22/07/2024 09:30"
        }
      }
    ]
  },
  {
    "_id": 2002,
    "name": "Marie Dupont",
    "licence_num": "34082A789012",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 17,
        "veh_vin": "gggggggggggggggg9",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "22/07/2024 09:00",
          "actual_datetime": "22/07/2024 09:30"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "22/07/2024 10:00",
          "actual_datetime": "22/07/2024 10:00"
        }
      },
      {
        "trip_id": 2,
        "veh_vin": "qwhgjnsutvdjnfru1",
        "pick-up": {
          "location_id": 111,
          "location_name": "Porte de La Chapelle Arena",
          "intended_datetime": "21/07/2024 13:00",
          "actual_datetime": "21/07/2024 13:00"
        },
        "drop off": {
          "location_id": 113,
          "location_name": "Olympic and Paralympic village",
          "intended_datetime": "21/07/2024 14:30",
          "actual_datetime": "21/07/2024 14:30"
        }
      }
    ]
  },
  {
    "_id": 2003,
    "name": "Louis Dubois",
    "licence_num": "45112B654321",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 3,
        "veh_vin": "ashgntjfugnvdhfl2",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 09:00",
          "actual_datetime": "21/07/2024 09:00"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "21/07/2024 10:00",
          "actual_datetime": "21/07/2024 10:00"
        }
      },
      {
        "trip_id": 14,
        "veh_vin": "eeeeeeeeeeeeeeee7",
        "pick-up": {
          "location_id": 113,
          "location_name": "Olympic and Paralympic village",
          "intended_datetime": "22/07/2024 09:00",
          "actual_datetime": "22/07/2024 09:30"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "22/07/2024 11:00",
          "actual_datetime": "22/07/2024 11:00"
        }
      }
    ]
  },
  {
    "_id": 2004,
    "name": "Antoine Lefevre",
    "licence_num": "670495098765",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 10,
        "veh_vin": "cccccccccccccccc5",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "25/07/2024 14:00",
          "actual_datetime": "25/07/2024 14:00"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 15:00",
          "actual_datetime": "25/07/2024 15:30"
        }
      },
      {
        "trip_id": 4,
        "veh_vin": "ashgntjfugnvdhfl2",
        "pick-up": {
          "location_id": 109,
          "location_name": "Paris La Defense Arena",
          "intended_datetime": "24/07/2024 12:00",
          "actual_datetime": "24/07/2024 12:30"
        },
        "drop off": {
          "location_id": 115,
          "location_name": "Eiffel Tower",
          "intended_datetime": "24/07/2024 13:00",
          "actual_datetime": "24/07/2024 13:00"
        }
      }
    ]
  },
  {
    "_id": 2005,
    "name": "Sophie Bernard",
    "licence_num": "89122a345678",
    "no_of_trips": 3,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 8,
        "veh_vin": "bbbbbbbbbbbbbbbb4",
        "pick-up": {
          "location_id": 108,
          "location_name": "Parc des Princes",
          "intended_datetime": "29/07/2024 11:00",
          "actual_datetime": "29/07/2024 11:00"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "29/07/2024 12:30",
          "actual_datetime": "29/07/2024 13:00"
        }
      },
      {
        "trip_id": 9,
        "veh_vin": "bbbbbbbbbbbbbbbb4",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "28/07/2024 10:30",
          "actual_datetime": "28/07/2024 10:30"
        },
        "drop off": {
          "location_id": 117,
          "location_name": "Tuileries Garden",
          "intended_datetime": "28/07/2024 11:30",
          "actual_datetime": "28/07/2024 11:30"
        }
      },
      {
        "trip_id": 19,
        "veh_vin": "hhhhhhhhhhhhhhh10",
        "pick-up": {
          "location_id": 111,
          "location_name": "Porte de La Chapelle Arena",
          "intended_datetime": "24/07/2024 12:30",
          "actual_datetime": "24/07/2024 12:30"
        },
        "drop off": {
          "location_id": 116,
          "location_name": "Louvre Museum",
          "intended_datetime": "24/07/2024 14:00",
          "actual_datetime": "24/07/2024 14:30"
        }
      }
    ]
  },
  {
    "_id": 2006,
    "name": "Arman",
    "licence_num": "23072b567890",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 6,
        "veh_vin": "nsjfwhdbfuydbwsh3",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 11:00",
          "actual_datetime": "27/07/2024 11:00"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "27/07/2024 12:00",
          "actual_datetime": "27/07/2024 12:00"
        }
      },
      {
        "trip_id": 5,
        "veh_vin": "nsjfwhdbfuydbwsh3",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:00",
          "actual_datetime": "26/07/2024 12:00"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "26/07/2024 13:00",
          "actual_datetime": "26/07/2024 13:10"
        }
      }
    ]
  },
  {
    "_id": 2007,
    "name": "Jean Moreau",
    "licence_num": "560903234567",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 7,
        "veh_vin": "bbbbbbbbbbbbbbbb4",
        "pick-up": {
          "location_id": 114,
          "location_name": "Champions Park",
          "intended_datetime": "30/07/2024 11:30",
          "actual_datetime": "30/07/2024 11:30"
        },
        "drop off": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "30/07/2024 12:30",
          "actual_datetime": "30/07/2024 12:30"
        }
      },
      {
        "trip_id": 16,
        "veh_vin": "ffffffffffffffff8",
        "pick-up": {
          "location_id": 107,
          "location_name": "North Paris Arena",
          "intended_datetime": "23/07/2024 13:30",
          "actual_datetime": "23/07/2024 13:30"
        },
        "drop off": {
          "location_id": 108,
          "location_name": "Parc des Princes",
          "intended_datetime": "23/07/2024 15:00",
          "actual_datetime": "23/07/2024 14:30"
        }
      }
    ]
  },
  {
    "_id": 2011,
    "name": "Mathieu Girard",
    "licence_num": "22102A456789",
    "no_of_trips": 1,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 11,
        "veh_vin": "cccccccccccccccc5",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "25/07/2024 10:00",
          "actual_datetime": "25/07/2024 10:15"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "25/07/2024 12:00",
          "actual_datetime": "25/07/2024 12:00"
        }
      }
    ]
  },
  {
    "_id": 2013,
    "name": "Lei Xiong",
    "licence_num": "441270890123",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 22,
        "veh_vin": "dddddddddddddddd6",
        "pick-up": {
          "location_id": 118,
          "location_name": "Sainte-Chapelle",
          "intended_datetime": "06/08/2024 12:00",
          "actual_datetime": "06/08/2024 12:00"
        },
        "drop off": {
          "location_id": 116,
          "location_name": "Louvre Museum",
          "intended_datetime": "06/08/2024 13:00",
          "actual_datetime": "06/08/2024 13:00"
        }
      },
      {
        "trip_id": 12,
        "veh_vin": "cccccccccccccccc5",
        "pick-up": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "26/07/2024 11:00",
          "actual_datetime": "26/07/2024 11:00"
        },
        "drop off": {
          "location_id": 112,
          "location_name": "Roland Garros Stadium",
          "intended_datetime": "26/07/2024 12:30",
          "actual_datetime": "26/07/2024 12:30"
        }
      }
    ]
  },
  {
    "_id": 2014,
    "name": "Claire Robert",
    "licence_num": "55052a543210",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 15,
        "veh_vin": "eeeeeeeeeeeeeeee7",
        "pick-up": {
          "location_id": 114,
          "location_name": "Champions Park",
          "intended_datetime": "24/07/2024 14:00",
          "actual_datetime": "24/07/2024 14:00"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "24/07/2024 17:00",
          "actual_datetime": "24/07/2024 17:00"
        }
      },
      {
        "trip_id": 100,
        "veh_vin": "1C4SDHCT9FC614231",
        "pick-up": {
          "location_id": 113,
          "location_name": "Olympic and Paralympic village",
          "intended_datetime": "30/07/2024 12:30",
          "actual_datetime": "30/07/2024 12:30"
        },
        "drop off": {
          "location_id": 111,
          "location_name": "Porte de La Chapelle Arena",
          "intended_datetime": "30/07/2024 14:00",
          "actual_datetime": "30/07/2024 14:15"
        }
      }
    ]
  },
  {
    "_id": 2015,
    "name": "Nathalie Renaud",
    "licence_num": "660725432109",
    "no_of_trips": 2,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 21,
        "veh_vin": "dddddddddddddddd6",
        "pick-up": {
          "location_id": 115,
          "location_name": "Eiffel Tower",
          "intended_datetime": "05/08/2024 11:00",
          "actual_datetime": "05/08/2024 11:00"
        },
        "drop off": {
          "location_id": 116,
          "location_name": "Louvre Museum",
          "intended_datetime": "05/08/2024 12:00",
          "actual_datetime": "05/08/2024 12:00"
        }
      },
      {
        "trip_id": 13,
        "veh_vin": "dddddddddddddddd6",
        "pick-up": {
          "location_id": 112,
          "location_name": "Roland Garros Stadium",
          "intended_datetime": "01/08/2024 13:00",
          "actual_datetime": "01/08/2024 13:00"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "01/08/2024 14:30",
          "actual_datetime": "01/08/2024 15:00"
        }
      }
    ]
  }
]);

// List all documents you added
db.driver.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.driver.find(
  {
    "$and": [
      { "trips_info.drop off.actual_datetime": { "$ne": null } },
      {
        "trips_info.drop off.location_name": {
          "$in": ["Champions Park", "Porte de La Chapelle Arena"]
        }
      }
    ]
  },
  { "name": 1, "licence_num": 1 }
);

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new trip is added and the driver is suspended
db.driver.find({ "_id": 2004 });
// Add new trip and set the driver to suspended
db.driver.updateOne(
  { "_id": 2004 },
  {
    "$push": {
      "trips_info": {
        "trip_id": 30,
        "veh_vin": "bbbbbbbbbbbbbbbb4",
        "pick-up": {
          "location_id": 117,
          "location_name": "Tuileries Garden",
          "intended_datetime": "10/08/2024 15:00",
          "actual_datetime": "10/08/2024 15:00"
        },
        "drop off": {
          "location_id": 118,
          "location_name": "Sainte-Chapelle",
          "intended_datetime": "10/08/2024 16:00",
          "actual_datetime": "10/08/2024 16:00"
        }
      }
    }
  }
);

db.driver.updateOne({ "_id": 2004 }, { "$set": { "suspended": "Y" } });

db.driver.updateOne({ "_id": 2004 }, { "$inc": { "no_of_trips": 1 } });
// Illustrate/confirm changes made
db.driver.find({ "_id": 2004 });