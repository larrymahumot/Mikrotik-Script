/ip firewall layer7-protocol
add name=MarkNetflix regexp="^.+(netflix).+\$"
add name=MarkYOUTUBE regexp="^.+(youtube|googlevideo).+\$"
add name=MarkFacebook regexp="^.+(facebook).+\$"
add name=MarkTwiter regexp="^.+(twitter).+\$"
add name=MarkInstagram regexp="^.+(instagram).+\$"
add name=INSTAGRAM regexp="^.+(instagram).+\$"
add name=MarkSnap regexp="^.+(snapchat).+\$"
add name=Markskype regexp="[\\\\|\\xd5]"
add name=MarkSpotify regexp="^.+(spotify).+\$"
add name=MarkWhatssap regexp="^.+(whatsapp).+\$"
add name=MarkOutlook regexp="^.+(outlook).+\$"
add name=MarkGmail regexp="^.+(mail.google).+\$"
add name=MarkInbox regexp="^.+(inbox.google).+\$"
add name=MarkLine regexp="^.+(line).+\$"
add name=MarkVimeo regexp="^.+(vimeo).+\$"
add name=MarkDeezer regexp="^.+(deezer).+\$"
add name=MarkClaroMusica regexp="^.+(claromusica).+\$"
add name=MarkClash regexp="^.+(clash).+\$"
add name=MarkVoucher regexp="^.+(captive.apple).+\$"
add name="Bancos de Guatemala" regexp="^.+(agromercantil|bancoazteca|bantigua|\
    bac|citi|chn|bancredit|bantrab|gytcontinental|bi|bancoinmobiliario|interba\
    nco|ficohsa|bancoreformador|vivibanco).+\$"

