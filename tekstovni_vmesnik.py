import model


def izpis_igre(igra):
    tekst = (
        "Število preostalih preizkusov: {stevilo_preostalih_poskusov} \n\n"
        "        {pravilni_del_gesla}\n\n"
        "Neuspeli poskusi: {neuspeli_poskusi}\n\n"
    ).format(
        stevilo_preostalih_poskusov=model.STEVILO_DOVOLJENIH_NAPAK - igra.stevilo_napak() + 1,
        pravilni_del_gesla=igra.pravilni_del_gesla(),
        neuspeli_poskusi=igra.nepravilni_ugibi()
    )
    return tekst


def izpis_zmage(igra):
    tekst = (
        "Wipiii, zmaga! Gelo je bilo: {geslo} \n\n"
    ).format(
        geslo=igra.geslo
    )
    return tekst  


def izpis_poraza(igra):
    tekst = (
        "Booo, poraz! Gelo je bilo: {geslo} \n\n"
    ).format(
        geslo=igra.geslo
    )
    return tekst 


def izpis_napake():
    return "\n#### Ugiba se ena črka naenkrat! ####\n"


def zahtevaj_vnos():
    return input("Črka: ")


def pozeni_vmesnik():

    igra = model.nova_igra()

    while True:
        # najprej izpisemo stanje, da vidimo, koliko crk je ipd.
        print(izpis_igre(igra))
        #čakamo na crko od uporabnika
        poskus = zahtevaj_vnos()
        rezultat_ugiba = igra.ugibaj(poskus)
        if rezultat_ugiba == model.VEC_KOT_CRKA:
            print(izpis_napake())
        elif igra.zmaga():
            print(izpis_zmage(igra))
        elif igra.poraz():
            print(izpis_poraza(igra))
            break
    return


#Zaženi igro:
pozeni_vmesnik()