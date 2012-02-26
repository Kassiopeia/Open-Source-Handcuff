<bitmap.scad>
chars = ["K","H","s","0","1","-","0","1"];
char_count = 8;

// block size 1 will result in 8mm per letter
block_size = 0.4;
// height is the Z height of each letter
height = 3;

difference()
{
translate(v = [0, 0, 5]) 
linear_extrude(file = "buegel_x.dxf", height = 10, center = true,$fn=300);
cylinder(h = 10, r=3,$fn=20);

difference()
{
cylinder(h = 2, r=64,$fn=150);
cylinder(h = 2, r=62,$fn=150);
}
translate(v = [0, 0, 8]) 
difference()
{
cylinder(h = 2, r=63-0.15,$fn=150);
cylinder(h = 2, r=61-0.15,$fn=150);
}






   #   translate(v = [-14,16,8]) {
              8bit_str(chars, char_count, block_size, height);
}
}    