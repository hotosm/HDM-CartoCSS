.poi {
    // Generic rules first
    [zoom>=18] {
        [shop!=null] {
            marker-file: url('icons/poi/shop-18.png');
        }
    }
    [zoom>=10][zoom<15] {
        [aeroway='airport'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
        }
    }
    [zoom>=15][zoom<17] {
        [aeroway='airfield'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
        }
        [amenity='university'],
        [amenity='police'],
        [amenity='bank'],
        [amenity='townhall'],
        [amenity='taxi'],
        [amenity='hospital'] {
            marker-file: url('icons/poi/[amenity]-12.png');
        }
    }
    [zoom>=16][zoom<17] {
        [amenity='school'] {
            marker-file: url('icons/poi/[amenity]-12.png');
        }
    }
    [zoom>=17] {
        [highway='bus_stop'] {
            marker-file: url('icons/poi/[highway]-18.png');
        }
        [aeroway='airfield'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
        }
        [amenity='hospital'],
        [amenity='kindergarten'],
        [amenity='school'],
        [amenity='university'],
        [amenity='police'],
        [amenity='drinking_water'],
        [amenity='grave_yard'],
        [amenity='cinema'],
        [amenity='cafe'],
        [amenity='bar'],
        [amenity='restaurant'],
        [amenity='toilets'],
        [amenity='fuel'],
        [amenity='bank'],
        [amenity='atm'],
        [amenity='pharmacy'],
        [amenity='townhall'],
        [amenity='taxi'],
        [amenity='post_office'],
        [amenity='studio'],
        [amenity='car_rental'],
        [amenity='money_transfer'],
        [amenity='social_facility'],
        [amenity='courthouse'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
        [amenity='place_of_worship'] {
            marker-file: url('icons/poi/[amenity]-18.png');
            [religion='christian'],
            [religion='jewish'],
            [religion='buddhist'],
            [religion='muslim'] {
                marker-file: url('icons/poi/[religion]-18.png');
            }
        }
        [craft!=null] {
            marker-file: url('icons/poi/craft-18.png');
        }
        [shop="beverages"],
        [shop="hairdresser"],
        [shop="supermarket"],
        [shop="bakery"],
        [shop="mobile_phone"],
        [shop="tailor"],
        [shop="car_parts"],
        [shop="computer"],
        [shop="clothes"],
        [shop="car_repair"],
        [shop="funeral_directors"],
        [shop="photo"] {
            marker-file: url('icons/poi/[shop]-18.png');
        }
        [office='ngo'] {
            marker-file: url('icons/poi/[office]-18.png');
        }
        [tourism='hotel'] {
            marker-file: url('icons/poi/[tourism]-18.png');
        }
        [man_made="water_well"] {
            marker-file: url('icons/poi/bucket-18.png');
            [drinking_water='yes'] {
                marker-file: url('icons/poi/drinking_water-18.png');
            }
            [pump='manual'] {
                marker-file: url('icons/poi/pump-18.png');
            }
        }
        [man_made="water_tower"] {
            marker-file: url('icons/poi/[man_made]-18.png');
        }
        [man_made="tower"]['tower:type'='communication'] {
            marker-file: url('icons/poi/communication-tower-18.png');
        }
        [leisure="playground"] {
            marker-file: url('icons/poi/[leisure]-18.png');
        }
    }
    [zoom>=18] {
        [amenity='gambling'],
        [amenity='waste_basket'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
    }
    [zoom>=19] {
        [amenity='bench'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
        [emergency="fire_hydrant"] {
            marker-file: url('icons/poi/[emergency]-18.png');
        }
    }
}
