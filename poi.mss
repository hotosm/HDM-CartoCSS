.poi {
    [zoom>=15][zoom<=16] {
        [amenity='hospital'] {
            marker-file: url('icons/poi/[amenity]-12.png');
        }
    }
    [zoom>=17] {
        [amenity='hospital'],
        [amenity='drinking_water'],
        [amenity='gambling'],
        [amenity='place_of_worship'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
        [craft!=null] {
            marker-file: url('icons/poi/craft-18.png');
        }
        [shop!=null] {
            marker-file: url('icons/poi/shop-18.png');
        }
        [shop="beverages"],
        [shop="hairdresser"],
        [shop="photo"] {
            marker-file: url('icons/poi/[shop]-18.png');
        }
    }
}
.poi::label {
    text-name: "";
    text-face-name: @sans;
    text-size: 10;
    text-wrap-width: 30;
    text-fill: @poi_text;
    text-halo-fill: @poi_halo;
    text-dy: 12;
    text-dx: 12;
    text-placement: point;
    text-halo-radius: 2;
    text-label-position-tolerance: 18;
    text-placement-type: simple;
    text-placements: "S,NE,W,NE,NW,SE,SW";
    [zoom>=17] {
        [amenity='hospital'] {
            text-name: "[name]";
        }
    }
    [zoom>=18] {
        [amenity='place_of_worship'] {
            text-name: "[name]";
        }
    }
    [zoom>=19] {
        [shop!=null] {
            text-name: "[name]";
        }
    }
}