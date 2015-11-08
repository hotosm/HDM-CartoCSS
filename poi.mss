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
        [main='townhall'],
        [main='fire_station'] {
            marker-file: url('icons/poi/[main]-12.png');
            marker-clip:false;
        }
    }
    [zoom>=15] {
        [main='government'],
        [main='university'],
        [main='police'],
        [main='bank'],
        [main='taxi'],
        [main='border_control'],
        [main='hospital'] {
            marker-file: url('icons/poi/[main]-12.png');
            marker-clip:false;
        }
    }
    [zoom=16] {
        [main='embassy'],
        [main='school'] {
            marker-clip:false;
            marker-file: url('icons/poi/[main]-12.png');
        }
    }
}
.poi::mainprio[zoom>=17] {
        [main='bus_stop'],
        [main='atm'],
        [main='fire_station'],
        [main='post_office'],
        [main='embassy'],
        [main='doctors'],
        [main='hospital'],
        [main='border_control'] {
            marker-file: url('icons/poi/[main]-18.png');
            marker-clip:false;
        }
        [main='government'],
        [main='ngo'] {
            marker-file: url('icons/poi/[main]-18.png');
            marker-clip:false;
            [main='ngo'] {
                [name='Oxfam'],[operator='oxfam'] { marker-file: url('icons/poi/oxfam-18.png'); }
                [name='ACRA'],[operator='acra'] { marker-file: url('icons/poi/acra-18.png'); }
            }
        }
}
.poi::high {
    [zoom>=17] {
        [main='kindergarten'],
        [main='school'],
        [main='university'],
        [main='police'],
        [main='drinking_water'],
        [main='grave_yard'],
        [main='cinema'],
        [main='cafe'],
        [main='bar'],
        [main='restaurant'],
        [main='toilets'],
        [main='shower'],
        [main='fuel'],
        [main='bank'],
        [main='pharmacy'],
        [main='townhall'],
        [main='taxi'],
        [main='studio'],
        [main='car_rental'],
        [main='money_transfer'],
        [main='social_facility'],
        [main='community_centre'],
        [main='arts_centre'],
        [main='dentist'],
        [main='fast_food'],
        [main='library'],
        [main='bureau_de_change'],
        [main='theatre'],
        [main='pub'],
        [main='telephone'],
        [main="beverages"],
        [main="hairdresser"],
        [main="supermarket"],
        [main="bakery"],
        [main="mobile_phone"],
        [main="tailor"],
        [main="car_parts"],
        [main="computer"],
        [main="clothes"],
        [main="car_repair"],
        [main="funeral_directors"],
        [main="dry_cleaning"],
        [main="butcher"],
        [main="seafood"],
        [main="hardware"],
        [main="bicycle"],
        [main="motorcycle"],
        [main="tyres"],
        [main="photo"],
        [main='courthouse'],
        [main='information'],
        [main='camp_site'],
        [main='viewpoint'],
        [main='alpine_hut'],
        [main='guest_house'],
        [main='hostel'],
        [main='hotel'],
        [main='museum'],
        [main="beach_resort"],
        [main="playground"],
        [main='motel'] { 
            marker-file: url('icons/poi/[main]-18.png');
            marker-clip:false;
        }
        ::placeofworship[main='place_of_worship'] {
            marker-file: url('icons/poi/[main]-18.png');
            marker-clip:false;
            [religion='christian'],
            [religion='jewish'],
            [religion='hindu'],
            [religion='muslim'] {
                marker-file: url('icons/poi/[religion]-18.png');
            }
        }
        ::craft[craft!=null] {
            marker-file: url('icons/poi/craft-18.png');
            marker-clip:false;
            [craft='shoemaker'],
            [craft='carpenter'] {
                marker-file: url('icons/poi/[craft]-18.png');
            }
        }
        ::manmade {
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
            [man_made="tower"]['tower:type'='communication'],
            [man_made='mast'] {
                marker-file: url('icons/poi/communication-tower-18.png');
            }
            [man_made="storage_tank"][content='water'] {
                marker-file: url('icons/poi/storage_tank-18.png');
            }
        }
    }
    ::catchallshop[zoom>=18] {
        [shop!=null] {
            marker-file: url('icons/poi/shop-18.png');
            marker-clip:false;
        }
    }
    [zoom>=18] {
        [main='gambling'],
        [main='recycling'],
        [main='waste_basket'] {
            marker-file: url('icons/poi/[main]-18.png');
        }
    }
    [zoom>=19] {
        [main='bench'],
        [main='street_lamp'],
        [main="fire_hydrant"] {
            marker-file: url('icons/poi/[main]-18.png');
        }
    }
}
