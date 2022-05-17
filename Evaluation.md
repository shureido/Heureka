# Hodnotenie

### Celkovo

---
- [x] Replikovatelnost testu: 0:5    (PASS:FAIL)
- [N] Replikovatelnost testu: 2:3    (PASS:FAIL)
---

- tentokrat som testy pustal aj na windowse, nie len macOS.

#### Errors:

- [x] Pri kazdom spusteni mam error:
```
[ ERROR ] Error in file '/Users/tomas/Documents/playground/TAA/dominika_sabova/heureka.robot' on line 3: Resource file 'pomocky.resource' does not exist.
```
- Ostatne Errory:
  - [x] 2x -> Element 'xpath=//*[@id="__next"]/main/div[1]/div[2]/div[4]/div/div[2]/button/span[1]' did not appear in 5 seconds.
  - [x] 3x -> WebDriverException: Message: target frame detached
  - [N] 3x - ElementClickInterceptedException: Message: element click intercepted: Element <a class="c-product__link" href="https://grily.heureka.sk/ariete-multi-gril-3v1-1916/">...</a> is not clickable at point (1028, 10). Other element would receive the click: <div class="l-header__wrapper">...</div>


---
  
- Z pohladu testingu:
  - [x] zhruba po riadok 23 je to citatelne
  - [x] nasledne nastupuje kopa xpathov, zaujmavych keywordov, ktore ako nezaujaty clovek vobec nechapem
  - [N] podstatne zvysena citatelnost, da sa pochopit o co ide
  - [N] miestami zbytocne parametrizovanie
  - [N] dobry point je, ze si to dala do 'slovenciny' cele, a neni tam kombinacia ENG + SK


- Z pohladu automatizacie:
  - [x] pouzivas `maximize browser window`, co moze mat za nasledok, ze na mojom rozliseni, ti nesedia lokatory
    - treba primarne pouzivat `set window size` cim zabezpecis rovnake podmienky na roznych rozliseniach
  - [x] vela `Sleep`
  - [x] xpathy by nemali byt na urovni testu, nici to prehladnost
  - [ ] kde su subory `keywords1.resource`, `keywords2.resource`? detto s lokatormi
    - treba pracovat a pouzivat aj nazvoslovie rozumne
  - [N] Priliz vela parametrov pre keywordy
  - [N] preco je riadok 21 - Over pocet v kosiku    3
    - a riadok 27 - Over pocet v kosiku2    2?
    - a riadok 32 - Over pocet v kosiku0    0?
    - pride mi, ze ten pocet by mal byt parameter a snim chces potom pracovat
  - [N] riadky 25, 28, 30 su take iste, treba tam ten parameter?
  - [N] riadky 26, 29, 31 su take iste? treba tam parametre?



- ***Overall***:
  - [x] Test nepresiel ani 1x . povodne sa to tvarilo ze to ide, ale narazilo to na to, ze produkt vyberas sialenym xpathom, ktory u mna ukazal na uplne iny item ako u teba ocividne
  - [x] dalsia vec je, ze tie itemy sa mozu menit, a to ze item s indexom X, je teraz X+n  ti to znacne komplikuje
  - [x] nepodarilo sa mi ani 1x pridat ani len 1 produkt do kosika
  - [N] testy nebezia rovnako stabilne na windows vs macOS
    - vyzera, ze je nejaky problem v chromedriver-i
    - tak ci onak, na windows testy presli

### Keywords subor
 
  - `General`
    - [N] Je dobre, ze subor je v 1 jazyku, avsak standardne sa v programovani pouziva anglictina, tj je dobre ak su Keywordy v anglictine, uz len z toho dovodu, ze velakrat na projekte robi viac ludi, a nie vsetci rozumeju slovencine
    - [ ] preco sa subor vola "keywords3.resource" ?
    - [ ] vsade sa pouziva `Format String`, ktory ti ale nic nerobi kedze vsetko priamo definujes.
      - [ ] kazdy 1 xpath je ne finalny a ukazuje na konkretny element
      - [ ]v zasade, ten "Format String" ti sposobuje to, ze `Keyword`-y, ktore pouzivas v main file potrebuju vzdy nejaky parameter
      - [N] Toto je zly practice, nemozes robit veci, ktore nepotrebujes zbytocne

    - [ ] keywordy by nemali byt vzdy na '1 konkretnu vec'
      - keyword ako taky by mal riesit komplexnu logiku, napr:
      Ak mam keyword, ktory sa vola `Add Item To Basket    xy` v nom by malo byt vyhladanie itemu, pridanie itemu a zaroven overenie, ci sa pridal do basketu. Standardne na to nechces mat 10 keywordov, ktore tieto kroky budu robit po 1
    - z toho ti potom vlastne vznikaju keywordy ako :
      - `Select gril`, `Select gril2`.... , ktore su nic nehovoriace, a citatel netusi, co je gril, gril2, gril10, gril4000
      - spravne riesenie je: `Select Item    nazov_grilu` a implementacne zariadit to, ze ten gril sa najde podla nazvu.
      - pripadne, poslat keywordu lokator, ktory gril chces, cim by si vo finale potrebovala len 1 kw na pridavanie veci
    - [ ] to iste plati v zasade pre vsetky keywordy
    - [N] keywordy `Over pocet v kosiku` urcite nerobia to co chces
      - 1) `Format string` je tam uplne nanic a nic nerobi
      - 2) lokator {item_boxes}  ukazuje na kosik, kde nic nezistujes
      - 3) `Wait Until Page Contains    0`  znamena, ze HOCIKDE na stranke, je 0  (pripadne ine cislo)
    - [N] keywordy `Zmaz produkt` a `Zmaz produkt potvrdenie` detto to vyssie.
      - ten Format String, v mojich kw mal dovod, v tvojich nerobi nic, iba zbytocne 'vynucuje' parametrizaciu

  - [x] `Set Window Size` je preferovane, je mozne, ze maximize sposobuje problemy s padmi testov na mojom rozliseni  (nepouzivaj `Maximize browser window`, asi to robi problemy aj pri xpathoch ako ich mas definovane)

  - [N] Keyword: `Vyber si gril1`, `Vyber si gril2` atd...
    - v praxi by to mal byt len 1kw, ktory dostane ako parameter nazov, tj: 
      - `Vyber si gril    Tefal GC 205012`
      - `Vyber si gril    Fieldmann FZG 1004`
      - tj. to je presne bod, kedy chces pouzit `Format String` a zlozit xpath tak, aby ti vybral Tefal, pripadne Fieldmann v druom pripade

  
### Variables subor

- [ ] preco sa subor vola `locators3.resource`
- [ ] lokatory v subore su strasne exaktne, treba ich mat dynamicke a ak aj treba presne, tak kratsie. Cim viac `/` a `//` v lokatoroch mas, tym je to nachylnejsie na chyby
- [x] neverim ze to u mna, pri pouziti `Maximize Browser Window` robi to co predpokladas, ze by malo
  - to nasledne sposobuje to, ze to cele lahne a neprejde test ani 1x
- [N] ani 1 z xpathov co pouzivas, nema formatovacie znaky, napriek tomu, v ramci keywords suboru formatujes tieto xpathy a snazis sa tam 'pridat' nejake texty

### Test Cases subor

- [ ] Plati to co je napisane vyssie
- [x] zo zaciatku test vyzera ok a citatelne, od riadku 23 uz netusim co sa deje
  - su tam nejake xpathy, tkore netusim co su
  - nerozumiem napr aj to, preco `Select price1    cena je v rozpati` je napisany takto
    - netusim co je 'price1', netusim co znamena, ze je cena v rozpati

- [x] TC subor je subor, ktory realne cita tester/analytik/produktak, ktory z toho by mal vycitat, co sa deje a ci je vhodne aplikaciu poslat na testing/releasnut
- [x] Z testu ako je napisane, naozaj nieje jasne o co ide... 
  - napr: `Item With Index Should Contain Icon2   0`  co je icon2? preco sa pytame, ci nejaky item obsahuje icon2? 
- [N] Test je urcite napisany lepsie, a jasnejsie, avsak su mierne zneuzite parametre pre keywordy, aj ked tieto parametre absolutne nic nerobi 
  
### Readme.md subor

- [ ] v com bol TC robeny nie je v zasade potrebana informacia
- [ ] readme by mal popisovat pracu s tym, co si poslale
- [x] netreba zbytocne pisat co je obsahom requirements

- [x] vysledok testu si zadala cestu k suboru, ale tato cesta:
  - je windows only
  - nikto to neotvori, kedze ta cesta je 'tvoja' na tvojom pc

- [x] chyba mi napriklad spomenute to, ze treba mat stianuty  konkretny driver pre konkretny browser
  - v nasom pripade `chromedriver` s konkretnou verziou atd...

- [ ] ak pouzivas .md subor je dobre pouzivat formatovanie, ktore tento subor ponuka
  - https://www.markdownguide.org/basic-syntax/

- [N] gromdriver -> chromedriver
- [N] je dobre dat link, neuploadovat chromedriver, pretoze v dobe ked to niekto bude pustat, uz nebude funkcny.
- [N] spusti test -> ako? akym sposobom? co sa ma stat?
- [N] preco potrebujem byt v danom projekte? a co to vobec znamena?
- [N] preco si potrebujem projekt stahovat do `pycharmu`? 


### requirements.txt subor
 
- [ ] subor je v pohode, na konci je komentar (#), ktory sa standardne nedava
- [ ] zaroven, v requirements mas aj "robotframework-pabot" co vobec nevyuzivas a nikde nespominas
- [ ] je dobre v requirements.txt drzat iba a len potrebne balicky
 

### Git repository

- [ ] doporucujem vytvorit .gitignore
- [x] celkovo repository cisty, nie je tam nic chybajuce
- [x] dokumentacia.xlsx je nepotrebny subor, je v nom len log.html a v zasade sa snim neda pracovat

