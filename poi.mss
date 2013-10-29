.airport {
    [zoom>=10][zoom<15] {
        [aeroway='airport'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
            marker-clip:false;
            marker-ignore-placement: true;
         }
    }
    [zoom>=15][zoom<17] {
        [aeroway='airfield'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
        }
    }
    [zoom>17] {
        [aeroway='airfield'] {
            marker-file: url('icons/poi/[aeroway]-18.png');
        }
    }
}

.poi::med[zoom<17] {
    [zoom>=14] {
        [amenity='townhall'],
        [amenity='fire_station'] {
            marker-file: url('icons/poi/[amenity]-12.png');
            marker-clip:false;
        }
    }
    [zoom>=15] {
        [office='government'] {
            marker-file: url('icons/poi/[office]-12.png');
            marker-clip:false;
        }
        [amenity='university'],
        [amenity='police'],
        [amenity='bank'],
        [amenity='taxi'],
        [amenity='hospital'] {
            marker-file: url('icons/poi/[amenity]-12.png');
            marker-clip:false;
        }
        [barrier='border_control'] {
            marker-file: url('icons/poi/[barrier]-12.png');
            marker-clip:false;
        }
    }
    [zoom=16] {
        [amenity='embassy'],
        [amenity='school'] {
            marker-clip:false;
            marker-file: url('icons/poi/[amenity]-12.png');
        }
    }
}
.poi::high-prio[zoom>=17] {
        [highway='bus_stop'] {
            marker-file: url('icons/poi/[highway]-18.png');
            marker-clip:false;
        }
        [amenity='atm'],
        [amenity='fire_station'],
        [amenity='post_office'],
        [amenity='embassy'],
        [amenity='doctors'],
        [amenity='hospital'] {
            marker-file: url('icons/poi/[amenity]-18.png');
            marker-clip:false;
        }
        [office='government'],
        [office='ngo'] {
            marker-file: url('icons/poi/[office]-18.png');
            marker-clip:false;
            [office='ngo'] {
                [name='Oxfam'] { marker-file: url('icons/poi/oxfam-18.png'); }
            }
        }
        [barrier='border_control'] {
            marker-file: url('icons/poi/[barrier]-18.png');
            marker-clip:false;
        }
}
.poi::high {
    // Generic rules first
    [zoom>=18] {
        [shop!=null] {
            marker-file: url('icons/poi/shop-18.png');
            marker-clip:false;
        }
    }
    [zoom>=17] {
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
        [amenity='shower'],
        [amenity='fuel'],
        [amenity='bank'],
        [amenity='pharmacy'],
        [amenity='townhall'],
        [amenity='taxi'],
        [amenity='studio'],
        [amenity='car_rental'],
        [amenity='money_transfer'],
        [amenity='social_facility'],
        [amenity='community_centre'],
        [amenity='arts_centre'],
        [amenity='dentist'],
        [amenity='fast_food'],
        [amenity='library'],
        [amenity='bureau_de_change'],
        [amenity='theatre'],
        [amenity='pub'],
        [amenity='courthouse'] {
            marker-file: url('icons/poi/[amenity]-18.png');
            marker-clip:false;
        }
        [amenity='place_of_worship'] {
            marker-file: url('icons/poi/[amenity]-18.png');
            marker-clip:false;
            [religion='christian'],
            [religion='jewish'],
            [religion='hindu'],
            [religion='muslim'] {
                marker-file: url('icons/poi/[religion]-18.png');
            }
        }
        [craft!=null] {
            marker-file: url('icons/poi/craft-18.png');
            marker-clip:false;
            [craft='shoemaker'],
            [craft='carpenter'] {
                marker-file: url('icons/poi/[craft]-18.png');
            }
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
        [shop="dry_cleaning"],
        [shop="butcher"],
        [shop="seafood"],
        [shop="hardware"],
        [shop="bicycle"],
        [shop="motorcycle"],
        [shop="tyres"],
        [shop="photo"] {
            marker-file: url('icons/poi/[shop]-18.png');
            marker-clip:false;
        }
        [tourism='information'],
        [tourism='camp_site'],
        [tourism='viewpoint'],
        [tourism='alpine_hut'],
        [tourism='guest_house'],
        [tourism='hostel'],
        [tourism='hotel'],
        [tourism='museum'],
        [tourism='motel'] { 
            marker-file: url('icons/poi/[tourism]-18.png');
            marker-clip:false;
        }
        [man_made="water_well"] {
            marker-file: url('icons/poi/bucket-18.png');
            [pump='manual'] {
                marker-file: url('icons/poi/pump-manual-18.png');
            }
            [pump='powered'] {
                marker-file: url('icons/poi/pump-powered-18.png');
            }
            [drinking_water='yes'] {
                marker-file: url('icons/poi/drinking_water_well-18.png');
            }
        }
        [man_made="watermill"],
        [man_made="water_tower"] {
            marker-file: url('icons/poi/[man_made]-18.png');
        }
        [man_made="tower"]['tower:type'='communication'] {
            marker-file: url('icons/poi/communication-tower-18.png');
        }
        [man_made="storage_tank"][content='water'] {
            marker-file: url('icons/poi/storage_tank-18.png');
        }
        [leisure="beach_resort"],
        [leisure="playground"] {
            marker-file: url('icons/poi/[leisure]-18.png');
            marker-clip:false;
        }
    }
    [zoom>=18] {
        [amenity='gambling'],
        [amenity='recycling'],
        [amenity='waste_basket'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
    }
    [zoom>=19] {
        [amenity='bench'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
        [highway='street_lamp'] {
            marker-file: url('icons/poi/[highway]-18.png');
        }
        [emergency="fire_hydrant"] {
            marker-file: url('icons/poi/[emergency]-18.png');
        }
    }
}
