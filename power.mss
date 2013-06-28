#power-line[zoom>=19] {
    line-color: @power_line;
    line-width: 1;
}
#power-point[type='pole'][zoom>=19] {
    marker-fill: @land;
    marker-width: 4;
    marker-height: 4;
    marker-line-color: @power_line;
    marker-line-width: 2;
}
#power-point[type='tower'][zoom>=19] {
    marker-file: url('icons/poi/power_tower-12.png')
}