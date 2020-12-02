#!/home/mkg/anaconda3/bin/wish

proc sky130_fet_ad_cb { w } { 
  
  #puts stdout "w = $w"
  set w2 [SSEvalString $w]

  set ad [expr $w2 * 0.29e-6]  
  #set ad2 [SSEngValue $ad 6]
  #set ad2 [eng $ad ""]
  set ad [eng2 $ad ""]
  #puts stdout "ad2 = $ad2"
  return $ad
  #return "ttt"
}


proc sky130_fet_pd_cb { w } { 
  
  set w2 [SSEvalString $w]

  set pd [expr 2.0 * ($w2 + 0.29e-6)]  
  set pd [eng2 $pd ""]
  return $pd
}


proc sky130_fet_nrd_cb { w } { 
  
  set w2 [SSEvalString $w]

  set nrd [expr 0.29e-6 / $w2]  
  set nrd [eng2 $nrd ""]
  return $nrd
}


proc sky130_mim_m3_cb { w l mf } { 
  #puts stderr "mim_m3"
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set camimc [expr 2.00e-15]    ; # Units: farad/micrometer^2
  set cpmimc [expr 0.19e-15]    ; # Units: farad/micrometer
  set m3_dw  [expr -0.025e-6]   ; # m3_dw = m4_dw = -0.025u 

  set wc [expr ($w2 + $m3_dw) * 1.0e6]  ; # to um scale
  set lc [expr ($l2 + $m3_dw) * 1.0e6]  ; # to um scale

  set carea [expr $camimc * $wc * $lc]
  set cperim [expr $cpmimc * ($wc + $lc)*2]
  set c0  [expr ($carea + $cperim)]
  set c0 [eng2 $c0 ""]
  return $c0
}


proc sky130_res_high_po_r_cb { w l mult } { 
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set rsheet [expr 317.3885]
  set rsh_h  [expr 345.8312]

  set rbody_dw [expr -0.001e-6]
  set weff [expr $w2 + $rbody_dw - 0.0672 * max(0.69e-6 - $w2, 0)]
  set leff [expr $l2 + 0.247e-6]

  set rhead [expr $rsh_h * 1.0e-6 / ($weff + 0.1558e-6)]
  set rbody [expr $rsheet * $leff / $weff ]
  set r_high_po [expr $rhead + $rbody]
  set r_high_po [eng2 $r_high_po ""]
  return $r_high_po
}


proc sky130_res_xhigh_po_r_cb { w l mult } { 
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set rsheet [expr 2000.0]

  set leff [expr $l2 - 0.0592e-6]
  set weff [expr $w2 - 0.056e-6]

  set rhead [expr 188.2e-6 / ( $weff - 0.0672 * max(0.69e-6 - $w2, 0) + 1.41e-6) ]
  # For xhigh_po_base model rcon = { -46.62e-12 / (w * w) + 331.73e-6 / w + 20.576 }
  set rbody [expr $rsheet * $leff / ($weff - 0.0672 * max(0.69e-6 - $w2, 0)) ]
  set r_xhigh_po [expr 2.0 * $rhead + $rbody]
  set r_xhigh_po [eng2 $r_xhigh_po ""]
  return $r_xhigh_po
}


proc sky130_res_generic_nd_r_cb { w l mult } { 
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set rdn [expr 120]
  set nfom_dw [expr 0.017e-6]
  set dw [expr -$nfom_dw / 2 ]
  set r_nd [expr $rdn * ($l2 / ($w2 + $dw))]
  set r_nd [eng2 $r_nd ""]
  return $r_nd
}


proc sky130_res_generic_pd_r_cb { w l mult } { 
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set rdp [expr 197]
  set pfom_dw [expr 0.004e-6]
  set dw [expr -$pfom_dw/2]
  set r_pd [expr $rdp * ($l2 / ($w2 + $dw))]
  set r_pd [eng2 $r_pd ""]
  return $r_pd
}


proc sky130_res_iso_pw_r_cb { w l mult } { 
  set w2 [SSEvalString $w]
  set l2 [SSEvalString $l]

  set rspwres [expr 3816]
  set dl      [expr 0.52e-6]

  set r_pw [expr $rspwres * ( ($l2 + $dl)/ $w2 )]
  set r_pw [eng2 $r_pw ""]
  return $r_pw
}



# round the input number to the unit factor
proc SSround {InputNumber Factor} {
        return [expr round($InputNumber/$Factor + 1e-10)*$Factor]
}

# floor the input number to the nuit factor
proc SSfloor {InputNumber Factor} {
        return [expr floor($InputNumber/$Factor + 1e-10)*$Factor]
}

proc SSroof {InputNumber Factor} {
        return [expr floor($InputNumber*-1.0/$Factor + 1e-10)*$Factor*-1]
}

proc SSint {InputNumber Factor} {
        return [expr int($InputNumber/$Factor + 1e-10)*$Factor]
}



# translate engineering symbol to scientific symbol
proc SSEvalString {String} {
if [regexp {(^[-]?[0-9]+[.]?[0-9]*)([TGMKkmunpfa]$)} $String match Number Scale] {
                switch $Scale {
                        T { set Scale e+12 }
                        G { set Scale e+09 }
                        M { set Scale e+06 }
                        K { set Scale e+03 }
                        k { set Scale e+03 }
                        m { set Scale e-03 }
                        u { set Scale e-06 }
                        n { set Scale e-09 }
                        p { set Scale e-12 }
                        f { set Scale e-15 }
                        a { set Scale e-18 }
                }
                return $Number$Scale
        } else {
                if {[regexp {^[ ]*$} $String] || [regexp -nocase {^default$} $String]} {set String 0}
                if [regexp -nocase {^true$} $String] {set String 1}
                return $String
        }
}


proc SSEngValue {floatNumber DigitNumber} {
        set DigitNumber [expr round($DigitNumber)]
        set floatNumber [expr $floatNumber]
        set scaleList1 [list a f p n u m "" K M G T]
        set scaleList2 [list m u n p f a]

        if [regexp {([0-9]+)[.]?([0-9]*)[eE](-?[0-9]+)} $floatNumber match Number1 Number2 OriginalScale] {
                if [regexp {^-0([1-9])} $OriginalScale match number] {
                        set OriginalScale -$number
                }
        } else {
                regexp {([0-9]+)[.]?([0-9]*)} $floatNumber match Number1 Number2
                set OriginalScale 0
        }

        if {$Number1 != 0} {
                set scale [expr ([string length $Number1]-1+$OriginalScale)/3]
                if {$scale < -6} {set scale -6}
                if {$scale > 4} {set scale 4}
                set Output [SSround [expr $floatNumber / 1.0e[expr 3*$scale]] 1.0e-$DigitNumber][lindex $scaleList1 [expr $scale+6]]
        } else {
                if {$Number2 == "" || $Number2 == 0} {
                        set Output 0
                } else {
                        regexp {^[0]*} $Number2 zeroNumber
                        set scale [expr [string length $zeroNumber]/3]
                        if {$scale > 5} {set scale 5}
                        set Output [SSround [expr $floatNumber * 1.0e[expr 3*($scale+1)]] 1.0e-$DigitNumber][lindex $scaleList2 $scale]
                }
        }
        if [regexp {^([0-9]+)\.0([afpnumKMGT]?)$} $Output match Out1 Out2] {
                return $Out1$Out2
        } else {
                return $Output
        }
}


 # eng - return engineering notation of any given number in a 2 element list as {num eng_unit}
 # pico nano micro milli 1 kilo Mega Giga Tera
 # use: eng <num> <unit>   eg. eng 123.456E6 Hz
 # First - scan to check if n is a number, if not then just return with input given {n u}
 proc eng {n u} {
        if ![scan $n %g res] {return [list $n {}$u]}
        if [expr $n>=1E-18 && $n<1E-15] {list [expr $n*1E18]a$u} \
        elseif [expr $n>=1E-15 && $n<1E-12] {list [expr $n*1E15]f$u} \
        elseif [expr $n>=1E-12 && $n<1E-9] {list [expr $n*1E12]p$u} \
        elseif [expr $n>=1E-9 && $n<1E-6] {list [expr $n*1E9]n$u} \
        elseif [expr $n>=1E-6 && $n<1E-3] {list [expr $n*1E6]u$u} \
        elseif [expr $n>=1E-3 && $n<1] {list [expr $n*1E3] m$u} \
        elseif [expr $n>=1 && $n<1E3] {list [format %g $n] $u} \
        elseif [expr $n>=1E3 && $n<1E6] {list [expr $n/1E3]k$u} \
        elseif [expr $n>=1E6 && $n<1E9] {list [expr $n/1E6]M$u} \
        elseif [expr $n>=1E9 && $n<1E12] {list [expr $n/1E9]G$u} \
        elseif [expr $n>=1E12 && $n<1E15] {list [expr $n/1E12]T$u} \
        else {list [format %g $n]$u}
 }

 proc eng2 {n u} {
        if ![scan $n %g res] {return [list $n {}$u]}
        if [expr $n>=1E-19 && $n<1E-16] {list [format %.9g [expr $n*1.0E18]]a$u} \
        elseif [expr $n>=1E-16 && $n<1E-13] {list [format %.9g [expr $n*1.0E15]]f$u} \
        elseif [expr $n>=1E-13 && $n<1E-10] {list [format %.9g [expr $n*1.0E12]]p$u} \
        elseif [expr $n>=1E-10 && $n<1E-7] {list [format %.9g [expr $n*1.0E9]]n$u} \
        elseif [expr $n>=1E-7 && $n<1E-4] {list [format %.9g [expr $n*1.0E6]]u$u} \
        elseif [expr $n>=1E-4 && $n<1E-1] {list [format %.9g [expr $n*1.0E3]]m$u} \
        elseif [expr $n>=1E-1 && $n<100] {list [format %.9g [format %g $n]]$u} \
        elseif [expr $n>=100 && $n<1E5] {list [format %.9g [expr $n/1.0E3]]k$u} \
        elseif [expr $n>=1E5 && $n<1E8] {list [format %.9g [expr $n/1.0E6]]M$u} \
        elseif [expr $n>=1E8 && $n<1E11] {list [format %.9g [expr $n/1.0E9]]G$u} \
        elseif [expr $n>=1E11 && $n<1E14] {list [format %.9g [expr $n/1.0E12]]T$u} \
        elseif [expr $n>=1E14 && $n<1E17] {list [format %.9g [expr $n/1.0E15]]P$u} \
        else {list [format %g $n]$u}
        #return [format %.6g $val]
 }



#set w 1.0u
##puts [format %.6g [calc_ad $w]]
#puts [calc_ad $w]
#set w 1.0n
##puts [format %.6g [calc_ad $w]]
#puts [calc_ad $w]

#set w 0.01n
#puts [calc_ad $w]
#set w 0.1n
#puts [calc_ad $w]
#set w 1n
#puts [calc_ad $w]
#set w 10n
#puts [calc_ad $w]
#set w 100n
#puts [calc_ad $w]




#set w 1.0u
#puts [format %.6g [SSEvalString $w]]
#set w 1.0n
#puts [format %.6g [SSEvalString $w]]


#puts [SSEngValue 25.00555e-15 3]






