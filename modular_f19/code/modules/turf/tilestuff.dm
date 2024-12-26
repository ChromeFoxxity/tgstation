#define TILE_DECAL_SUBTYPE_HELPER(path)\
##path/opposingcorners {\
	icon_state = "tile_opposing_corners";\
}\
##path/half {\
	icon_state = "tile_half";\
}\
##path/half/contrasted {\
	icon_state = "tile_half_contrasted";\
}\
##path/anticorner {\
	icon_state = "tile_anticorner";\
}\
##path/anticorner/contrasted {\
	icon_state = "tile_anticorner_contrasted";\
}\
##path/fourcorners {\
	icon_state = "tile_fourcorners";\
}\
##path/full {\
	icon_state = "tile_full";\
}\
##path/diagonal_centre {\
	icon_state = "diagonal_centre";\
}\
##path/diagonal_edge {\
	icon_state = "diagonal_edge";\
}\
##path/tram {\
	icon_state = "tile_tram";\
}

/// Safe decals
/obj/effect/turf_decal/tile/safe
	name = "safe tile decal"
	color = "#365034"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/safe)

/// Euclid decals
/obj/effect/turf_decal/tile/euclid
	name = "euclid tile decal"
	color = "#635424"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/euclid)

/// Keter decals
/obj/effect/turf_decal/tile/keter
	name = "keter tile decal"
	color = "#65261e"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/keter)

/// LCZ decals
/obj/effect/turf_decal/tile/lcz
	name = "lcz tile decal"
	color = "#E0C276"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/lcz)

/obj/effect/turf_decal/tile/science
	name = "science tile decal"
	color = "#0545B5"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/science)

#undef TILE_DECAL_SUBTYPE_HELPER

/// Automatically generates all trimlines for a decal with the given path.
#define TRIMLINE_SUBTYPE_HELPER(path)\
##path/line {\
	icon_state = "trimline";\
}\
##path/corner {\
	icon_state = "trimline_corner";\
}\
##path/end {\
	icon_state = "trimline_end";\
}\
##path/arrow_cw {\
	icon_state = "trimline_arrow_cw";\
}\
##path/arrow_ccw {\
	icon_state = "trimline_arrow_ccw";\
}\
##path/warning {\
	icon_state = "trimline_warn";\
}\
##path/tram {\
	icon_state = "trimline_tram";\
}\
##path/mid_joiner {\
	icon_state = "trimline_mid";\
}\
##path/filled {\
	icon_state = "trimline_box_fill";\
}\
##path/filled/line {\
	icon_state = "trimline_fill";\
}\
##path/filled/corner {\
	icon_state = "trimline_corner_fill";\
}\
##path/filled/end {\
	icon_state = "trimline_end_fill";\
}\
##path/filled/arrow_cw {\
	icon_state = "trimline_arrow_cw_fill";\
}\
##path/filled/arrow_ccw {\
	icon_state = "trimline_arrow_ccw_fill";\
}\
##path/filled/warning {\
	icon_state = "trimline_warn_fill";\
}\
##path/filled/warning/corner {\
	icon_state = "trimline_corner_warn_fill";\
}\
##path/filled/mid_joiner {\
	icon_state = "trimline_mid_fill";\
}\
##path/filled/shrink_cw {\
	icon_state = "trimline_shrink_cw";\
}\
##path/filled/shrink_ccw {\
	icon_state = "trimline_shrink_ccw";\
}

/obj/effect/turf_decal/trimline/safe
	color = "#365034"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/safe)

/obj/effect/turf_decal/trimline/euclid
	color = "#635424"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/euclid)

/obj/effect/turf_decal/trimline/keter
	color = "#65261e"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/keter)

/obj/effect/turf_decal/trimline/lcz
	color = "#E0C276"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/lcz)

/obj/effect/turf_decal/trimline/science
	color = "#0545B5"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/science)

#undef TRIMLINE_SUBTYPE_HELPER
