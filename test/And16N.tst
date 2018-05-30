load And16N.hdl,
output-file And16N.out,
compare-to And16N.cmp,
output-list a%B1.16.1 b%B1.1.1 out%B1.16.1;

set a %B0000000000000000,
set b %B0,
eval,
output;

set a %B0000000000000000,
set b %B1,
eval,
output;

set a %B1111111111111111,
set b %B1,
eval,
output;

set a %B1010101010101010,
set b %B1,
eval,
output;

set a %B0011110011000011,
set b %B0,
eval,
output;

set a %B0001001000110100,
set b %B1,
eval,
output;