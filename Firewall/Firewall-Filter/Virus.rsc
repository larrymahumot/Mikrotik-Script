/ip firewall filter
add chain=virus protocol=tcp dst-port=135-139 action=drop comment="Blaster Worm"
add chain=virus protocol=udp dst-port=135-139 action=drop comment="Messenger Worm"
add chain=virus protocol=tcp dst-port=445 action=drop comment="Blaster Worm"
add chain=virus protocol=udp dst-port=445 action=drop comment="Blaster Worm"
add chain=virus protocol=tcp dst-port=593 action=drop comment="unknown"
add chain=virus protocol=tcp dst-port=1024-1030 action=drop comment="unknown"
add chain=virus protocol=tcp dst-port=1080 action=drop comment="Drop MyDoom"
add chain=virus protocol=tcp dst-port=1214 action=drop comment="unknown"
add chain=virus protocol=tcp dst-port=1363 action=drop comment="ndm requester"
add chain=virus protocol=tcp dst-port=1364 action=drop comment="ndm server"
add chain=virus protocol=tcp dst-port=1368 action=drop comment="screen cast"
add chain=virus protocol=tcp dst-port=1373 action=drop comment="hromgrafx"
add chain=virus protocol=tcp dst-port=1377 action=drop comment="cichlid"
add chain=virus protocol=tcp dst-port=2745 action=drop comment="Bagle Virus"
add chain=virus protocol=tcp dst-port=2283 action=drop comment="Dumaru.Y"
add chain=virus protocol=tcp dst-port=2535 action=drop comment="Beagle"
add chain=virus protocol=tcp dst-port=2745 action=drop comment="Beagle.C-K"
add chain=virus protocol=tcp dst-port=3127-3128 action=drop comment="MyDoom"
add chain=virus protocol=tcp dst-port=3410 action=drop comment="Backdoor OptixPro"
add chain=virus protocol=tcp dst-port=4444 action=drop comment="Worm"
add chain=virus protocol=udp dst-port=4444 action=drop comment="Worm"
add chain=virus protocol=tcp dst-port=5554 action=drop comment="Drop Sasser"
add chain=virus protocol=tcp dst-port=8866 action=drop comment="Drop Beagle.B"
add chain=virus protocol=tcp dst-port=9898 action=drop comment="Drop Dabber.A-B"
add chain=virus protocol=tcp dst-port=10000 action=drop comment="Drop Dumaru.Y"
add chain=virus protocol=tcp dst-port=10080 action=drop comment="Drop MyDoom.B"
add chain=virus protocol=tcp dst-port=12345 action=drop comment="Drop NetBus"
add chain=virus protocol=tcp dst-port=17300 action=drop comment="Drop Kuang2"
add chain=virus protocol=tcp dst-port=27374 action=drop comment="Drop SubSeven"
add chain=virus protocol=tcp dst-port=65506 action=drop comment="Drop PhatBot,Agobot, Gaobot"
add chain=virus protocol=udp dst-port=12667 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=udp dst-port=27665 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=udp dst-port=31335 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=udp dst-port=27444 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=udp dst-port=34555 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=udp dst-port=35555 action=drop comment="Trinoo" disabled=no
add chain=virus protocol=tcp dst-port=27444 action=drop comment="Trinoo" disabled=no