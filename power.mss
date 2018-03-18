#power-line[zoom>=16] {
    line-color: @power_line;
    line-width: 1;
}
#power-point[type='pole'][zoom>=18] {
    marker-fill: @land;
    marker-width: 4;
    marker-height: 4;
    marker-line-color: @power_line;
    marker-line-width: 2;
}
#power-point[type='tower'][zoom>=16] {
    marker-file: url('icons/poi/power_tower.svg');
}
.power-poi[type='generator'][zoom>=18] {
    marker-file: url('icons/poi/generator.svg');
    [source='nuclear'],
    [source='wind'],
    [source='solar'] {
        marker-file: url('icons/poi/generator_[source].svg');
    }
}
