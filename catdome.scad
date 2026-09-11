// CAT DOME - bermed, corbelled, wasp-cell wall
// Parametric source. Edit the parameters, render, export STL.
// Units: mm.  License: same terms as Dome-World.

R_IN    = 220;   // interior floor radius -> 440mm interior diameter
H_IN    = 320;   // interior apex height
SKIN    = 5;     // printed skin thickness
CORE    = 16;    // wasp-cell core depth (AIR, not wool - see README)
N_TIERS = 5;
N_SEG   = 8;
CELL    = 22;    // hex cell across-flats
CELLW   = 2;     // cell wall
CHIM_R  = 30;    // chimney bore radius
DOOR_W  = 150;   // entrance width
DOOR_H  = 165;   // entrance height
$fn     = 96;

WALL = SKIN + CORE + SKIN;

function r_in(z) = R_IN * sqrt(max(0, 1 - pow(min(z/H_IN,1), 2)));

module dome_shell() {
    rotate_extrude()
      polygon(concat(
        [for (i=[0:40]) let(z = H_IN*i/40) [r_in(z)+WALL, z]],
        [for (i=[40:-1:0]) let(z = H_IN*i/40) [r_in(z), z]]
      ));
}

module entrance() {
    translate([0,0,DOOR_H/2])
      rotate([90,0,0])
        union() {
          cube([DOOR_W, DOOR_H, 600], center=true);
          translate([0,DOOR_H/2,0]) cylinder(h=600, r=DOOR_W/2, center=true);
        }
}

module chimney_bore() {
    translate([0,0,H_IN-120]) cylinder(h=300, r=CHIM_R);
}

module tier(i) {
    z0 = H_IN*i/N_TIERS;  z1 = H_IN*(i+1)/N_TIERS;
    intersection() {
        difference() {
            dome_shell();
            entrance();
            translate([0,0,0]) rotate([0,0,180]) entrance();  // second exit
            chimney_bore();
        }
        translate([0,0,z0]) cylinder(h=z1-z0, r=R_IN+WALL+20);
    }
}

module segment(i, s) {
    intersection() {
        tier(i);
        rotate([0,0,s*360/N_SEG])
          linear_extrude(H_IN+10)
            polygon([[0,0],[600,0],[600*cos(360/N_SEG),600*sin(360/N_SEG)]]);
    }
}

// Render one piece at a time for export:
segment(0, 0);
