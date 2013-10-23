var LEGEND = {
    title: "HOT style",
    description: "Humanitarian focused OSM base layer.",
    displayPopup: true,
    sections: [{
        title: 'Roads',
        className: 'roads',
        keys: [
            {
                coordinates: [19.67236, -72.11825, 15],
                text: "Paved primary"
            },
            {
                coordinates: [19.8090, -72.4498, 15],
                text: "Paved secondary"
            },
            {
                coordinates: [19.72434, -72.16495, 15],
                text: "Tertiary"
            },
            {
                coordinates: [19.66985, -72.12450, 19],
                text: "Paved Residential"
            },
            {
                coordinates: [19.67993, -72.15773, 16],
                text: "Unpaved"
            },
            {
                coordinates: [19.67921, -72.14910, 17],
                text: "Track"
            },
            {
                coordinates: [19.67885, -72.16084, 17],
                text: "Path"
            }
        ]
    },
    {
        title: 'Landuse',
        className: 'landuse',
        keys: [
            {
                coordinates: [19.7365, -72.1487, 16],
                text: "Wetland"
            },
            {
                coordinates: [19.71656, -72.12472, 17],
                text: "Farm land / agriculture"
            },
            {
                coordinates: [19.66952, -72.00810, 17],
                text: "Industrial"
            },
            {
                coordinates: [19.5867, -72.2504, 17],
                text: "Forest"
            }
        ]
    },
    {
        title: 'Health & education',
        className: 'poi',
        keys: [
            {
                coordinates: [19.67108, -72.12233, 19],
                text: "Hospital"
            },
            {
                coordinates: [19.67269, -72.12493, 19],
                text: "Pharmacy"
            },
            {
                coordinates: [19.737694, -72.183481, 18],
                text: "Dentist"
            },
            {
                coordinates: [19.65555, -72.07040, 17],
                text: "University"
            },
            {
                coordinates: [19.54809, -71.72016, 19],
                text: "School"
            },
            {
                coordinates: [19.55134, -71.72704, 19],
                text: "Kindergarten"
            }
        ]
    },
    {
        title: 'Water & Sanitation',
        className: 'poi',
        keys: [
            {
                coordinates: [19.69696, -72.15852, 20],
                text: "potable water, unspecified source"
            },
            {
                coordinates: [19.63401, -72.14206, 20],
                text: "Water well, potable water"
            },
            {
                coordinates: [19.695595, -72.155845, 20],
                text: "Water well, manual pump, no potable water"
            },
            {
                coordinates: [19.69251, -72.15723, 20],
                text: "Water well, powered pump, no potable water"
            },
            {
                coordinates: [19.67912, -72.126845, 20],
                text: "Water well, no pump, no potable water"
            },
            {
                coordinates: [19.634165, -72.14189, 20],
                text: "Water tower"
            },
            {
                coordinates: [19.66293, -72.11811, 20],
                text: "Water tank"
            },
            {
                coordinates: [18.54379, -72.331565, 20],
                text: "Toilets"
            },
            {
                coordinates: [18.539408, -72.301255, 20],
                text: "Showers"
            }
            
        ]
    },
    {
        title: 'Money',
        className: 'poi',
        keys: [
            {
                coordinates: [19.757764, -72.200638, 20],
                text: "bank"
            },
            {
                coordinates: [19.55020, -71.72397, 20],
                text: "ATM"
            },
            {
                coordinates: [19.10882, -72.69989, 20],
                text: "bureau de change/currency exchange"
            },
            {
                coordinates: [19.55042, -71.72563, 20],
                text: "money transfer"
            }
        ]
    },
    {
        title: 'Shops',
        className: 'poi',
        keys: [
            {
                coordinates: [19.55006, -71.72539, 20],
                text: "Generic shop icon"
            },
            {
                coordinates: [19.55053, -71.72614, 20],
                text: "Hardware"
            },
            {
                coordinates: [19.55093, -71.72694, 20],
                text: "Clothes"
            },
            {
                coordinates: [19.75632, -72.20495, 20],
                text: "Tailor"
            },
            {
                coordinates: [19.55010, -71.72416, 20],
                text: "Dry cleaning"
            },
            {
                coordinates: [19.66933, -72.12373, 20],
                text: "Hairdresser"
            },
            {
                coordinates: [19.76026, -72.20211, 20],
                text: "Computers"
            },
            {
                coordinates: [19.76128, -72.20152, 20],
                text: "Phones"
            },
              {
                coordinates: [19.74516, -72.21019, 20],
                text: "Photo"
            },
            {
                coordinates: [19.75853, -72.20430, 20],
                text: "Car parts"
            },
            {
                coordinates: [19.74908, -72.20775, 20],
                text: "Tires"
            },
            {
                coordinates: [19.74832, -72.20764, 20],
                text: "Motorcycle"
            },
            {
                coordinates: [19.74775, -72.20765, 20],
                text: "Car repair"
            }
        ]
    },
    {
        title: 'Food & drink',
        className: 'poi',
        keys: [
            {
                coordinates: [19.67031, -72.12675, 20],
                text: "Restaurant"
            },
            {
                coordinates: [19.66781, -72.12224, 20],
                text: "Bakery"
            },
            {
                coordinates: [19.66910, -72.12724, 20],
                text: "Bar"
            },
              {
                coordinates: [19.67214, -72.12361, 20],
                text: "Beverages"
            },
            {
                coordinates: [19.69580, -72.15649, 20],
                text: "Café"
            },
            {
                coordinates: [19.75773, -70.51684, 20],
                text: "Pub"
            }
        ]
   },
   {
        title: 'Social & Government',
        className: 'poi',
        keys: [
            {
                coordinates: [19.662519, -71.836931, 20],
                text: "Government Office"
            },
            {
                coordinates: [19.667918, -72.01959, 20],
                text: "Police"
            },
            {
                coordinates: [19.736724, -72.183599, 20],
                text: "Social Facility"
            },
            {
                coordinates: [19.669621, -72.127119, 20],
                text: "Community Center"
            },
            {
                coordinates: [19.104301, -72.695057, 20],
                text: "NGO (Non-Governmental Organization) Office"
            }
        ]
    }
]};
