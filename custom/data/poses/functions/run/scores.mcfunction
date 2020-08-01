#pose range: -359.99999..359,99999


#n dummy_variables needs intermediates, 
scoreboard objectives add _var00 dummy
scoreboard objectives add _var01 dummy
scoreboard objectives add _var02 dummy
scoreboard objectives add _var03 dummy

#3*6 positions "O"
scoreboard objectives add as_h0 dummy
scoreboard objectives add as_h1 dummy
scoreboard objectives add as_h2 dummy
scoreboard objectives add as_b0 dummy
scoreboard objectives add as_b1 dummy
scoreboard objectives add as_b2 dummy
scoreboard objectives add as_la0 dummy
scoreboard objectives add as_la1 dummy
scoreboard objectives add as_la2 dummy
scoreboard objectives add as_ra0 dummy
scoreboard objectives add as_ra1 dummy
scoreboard objectives add as_ra2 dummy
scoreboard objectives add as_ll0 dummy
scoreboard objectives add as_ll1 dummy
scoreboard objectives add as_ll2 dummy
scoreboard objectives add as_rl0 dummy
scoreboard objectives add as_rl1 dummy
scoreboard objectives add as_rl2 dummy

#3*6 end/changes (prime) "P"
scoreboard objectives add as_h0_p dummy
scoreboard objectives add as_h1_p dummy
scoreboard objectives add as_h2_p dummy
scoreboard objectives add as_b0_p dummy
scoreboard objectives add as_b1_p dummy
scoreboard objectives add as_b2_p dummy
scoreboard objectives add as_la0_p dummy
scoreboard objectives add as_la1_p dummy
scoreboard objectives add as_la2_p dummy
scoreboard objectives add as_ra0_p dummy
scoreboard objectives add as_ra1_p dummy
scoreboard objectives add as_ra2_p dummy
scoreboard objectives add as_ll0_p dummy
scoreboard objectives add as_ll1_p dummy
scoreboard objectives add as_ll2_p dummy
scoreboard objectives add as_rl0_p dummy
scoreboard objectives add as_rl1_p dummy
scoreboard objectives add as_rl2_p dummy

#6 ticks_to_complete "T"
scoreboard objectives add as_h_t dummy
scoreboard objectives add as_b_t dummy
scoreboard objectives add as_la_t dummy
scoreboard objectives add as_ra_t dummy
scoreboard objectives add as_ll_t dummy
scoreboard objectives add as_rl_t dummy


#Set relative to 360 in the beginning? GET_dr
#	O < 0: O += 360; P > O + 180: P -= 360; P < O - 180: O -= 360
#Algorithm: at every tick T >= 1: move by O += (P-O)/T ; then T-=1
#O is always changing. P is set. T is set.
#Eventually O will get very close to P, dispite of resolution.