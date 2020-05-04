-- -- Adding new signals
data:extend(
{	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
  {
    type = "item-subgroup",
    name = "k-special-signals",
    group = "signals",
    order = "z1"
  },
  
  {
    type = "item-subgroup",
    name = "k-special-signals-2",
    group = "signals",
    order = "z2"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "attention_1",
    icon = "__KrastorioPorted__/graphics/icons/signal/attention_1.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-1[attention_1]"
  },

  {
    type = "virtual-signal",
    name = "attention_2",
    icon = "__KrastorioPorted__/graphics/icons/signal/attention_2.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-2[attention_2]"
  },
  
  {
    type = "virtual-signal",
    name = "attention_3",
    icon = "__KrastorioPorted__/graphics/icons/signal/attention_3.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-3[attention_3]"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "nuclear-1",
    icon = "__KrastorioPorted__/graphics/icons/signal/nuclear-1.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-4[nuclear-1]"
  },

  {
    type = "virtual-signal",
    name = "nuclear-2",
    icon = "__KrastorioPorted__/graphics/icons/signal/nuclear-2.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-5[nuclear-2]"
  },
  
  {
    type = "virtual-signal",
    name = "biohazard",
    icon = "__KrastorioPorted__/graphics/icons/signal/biohazard.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-6[biohazard]"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "power",
    icon = "__KrastorioPorted__/graphics/icons/signal/power.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-7[power]"
  },
  
  {
    type = "virtual-signal",
    name = "power_on",
    icon = "__KrastorioPorted__/graphics/icons/signal/power_on.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-8[power_on]"
  },
  
  {
    type = "virtual-signal",
    name = "power_off",
    icon = "__KrastorioPorted__/graphics/icons/signal/power_off.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-9[power_off]"
  },
  
  --

  {
    type = "virtual-signal",
    name = "battery",
    icon = "__KrastorioPorted__/graphics/icons/signal/battery.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-a[battery]"
  },
  
  {
    type = "virtual-signal",
    name = "battery_low",
    icon = "__KrastorioPorted__/graphics/icons/signal/battery_low.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-b[battery_low]"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "star_w",
    icon = "__KrastorioPorted__/graphics/icons/signal/star_w.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-c[star_w]"
  },
  
  {
    type = "virtual-signal",
    name = "star_b",
    icon = "__KrastorioPorted__/graphics/icons/signal/star_b.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-d[star_b]"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "energy",
    icon = "__KrastorioPorted__/graphics/icons/signal/energy.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-e[energy]"
  },
  
  {
    type = "virtual-signal",
    name = "time",
    icon = "__KrastorioPorted__/graphics/icons/signal/time.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-f[time]"
  },
  
  --
  
  {
    type = "virtual-signal",
    name = "gear_w",
    icon = "__KrastorioPorted__/graphics/icons/signal/gear_w.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-g[gear_w]"
  },
  
  {
    type = "virtual-signal",
    name = "gear_b",
    icon = "__KrastorioPorted__/graphics/icons/signal/gear_b.png",
    icon_size = 64,
    subgroup = "k-special-signals",
    order = "a[special-signals]-h[gear_b]"
  },
  
  --
  
  
  {
    type = "virtual-signal",
    name = "build_here",
    icon = "__KrastorioPorted__/graphics/icons/signal/build_here.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-1[build_here]"
  },
  
  {
    type = "virtual-signal",
    name = "dont_touch",
    icon = "__KrastorioPorted__/graphics/icons/signal/dont_touch.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-2[dont_touch]"
  },
  
  {
    type = "virtual-signal",
    name = "kill",
    icon = "__KrastorioPorted__/graphics/icons/signal/kill.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-3[kill]"
  },
  
  {
    type = "virtual-signal",
    name = "wtf",
    icon = "__KrastorioPorted__/graphics/icons/signal/wtf.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-4[wtf]"
  },
  
  
  {
    type = "virtual-signal",
    name = "smile",
    icon = "__KrastorioPorted__/graphics/icons/signal/smile.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-zz9[smile]"
  },
  
  {
    type = "virtual-signal",
    name = "scull",
    icon = "__KrastorioPorted__/graphics/icons/signal/scull.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-zz9[scull]"
  },
  
  {
    type = "virtual-signal",
    name = "krastorio",
    icon = "__KrastorioPorted__/graphics/icons/signal/krastorio.png",
    icon_size = 64,
    subgroup = "k-special-signals-2",
    order = "a[special-signals]-zzz[krastorio]"
  },
  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})