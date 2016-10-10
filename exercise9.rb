h = {a:1, b:2, c:3, d:4}
h2 = {e:5}

h[:b]

h.merge!(h2)

h.delete_if { |k,v| v < 3.5 }
