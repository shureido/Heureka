# Hodnotenie

### Celkovo

---
- Replikovatelnost testu: 0:5    (PASS:FAIL)
---


#### Errors:
- Pri kazdom spusteni mam error:
```
[ ERROR ] Error in file '/Users/tomas/Documents/playground/TAA/dominika_sabova/heureka.robot' on line 3: Resource file 'pomocky.resource' does not exist.
```
- Ostatne Errory:
  - 2x -> Element 'xpath=//*[@id="__next"]/main/div[1]/div[2]/div[4]/div/div[2]/button/span[1]' did not appear in 5 seconds.
  - 3x -> WebDriverException: Message: target frame detached
  - 


---
  
- Z pohladu testingu:
  - zhruba po riadok 23 je to citatelne
  - nasledne nastupuje kopa xpathov, zaujmavych keywordov, ktore ako nezaujaty clovek vobec nechapem


- Z pohladu automatizacie:
  - pouzivas `maximize browser window`, co moze mat za nasledok, ze na mojom rozliseni, ti nesedia lokatory
    - treba primarne pouzivat `set window size` cim zabezpecis rovnake podmienky na roznych rozliseniach
  - vela `Sleep`
  - xpathy by nemali byt na urovni testu, nici to prehladnost
  - kde su subory `keywords1.resource`, `keywords2.resource`? detto s lokatormi
    - treba pracovat a pouzivat aj nazvoslovie rozumne



- ***Overall***:
  - Test nepresiel ani 1x . povodne sa to tvarilo ze to ide, ale narazilo to na to, ze produkt vyberas sialenym xpathom, ktory u mna ukazal na uplne iny item ako u teba ocividne
  - dalsia vec je, ze tie itemy sa mozu menit, a to ze item s indexom X, je teraz X+n  ti to znacne komplikuje
  - nepodarilo sa mi ani 1x pridat ani len 1 produkt do kosika

### Keywords subor
 
  - `General`
    - preco sa subor vola "keywords3.resource" ?
    - vsade sa pouziva `Format String`, ktory ti ale nic nerobi kedze vsetko priamo definujes.
      - kazdy 1 xpath je ne finalny a ukazuje na konkretny element
      - v zasade, ten "Format String" ti sposobuje to, ze `Keyword`-y, ktore pouzivas v main file potrebuju vzdy nejaky parameter
    - keywordy by nemali byt vzdy na '1 konkretnu vec'
      - keyword ako taky by mal riesit komplexnu logiku, napr:
      Ak mam keyword, ktory sa vola `Add Item To Basket    xy` v nom by malo byt vyhladanie itemu, pridanie itemu a zaroven overenie, ci sa pridal do basketu
      Standardne na to nechces mat 10 keywordov, ktore tieto kroky budu robit po 1
    - z toho ti potom vlastne vznikaju keywordy ako :
      - `Select gril`, `Select gril2`.... , ktore su nic nehovoriace, a citatel netusi, co je gril, gril2, gril10, gril4000
      - spravne riesenie je: `Select Item    nazov_grilu` a implementacne zariadit to, ze ten gril sa najde podla nazvu.
      - pripadne, poslat keywordu lokator, ktory gril chces, cim by si vo finale potrebovala len 1 kw na pridavanie veci
    - to iste plati v zasade pre vsetky keywordy

  - `Set Window Size` je preferovane, je mozne, ze maximize sposobuje problemy s padmi testov na mojom rozliseni  (nepouzivaj `Maximize browser window`, asi to robi problemy aj pri xpathoch ako ich mas definovane)

  
### Variables subor

- preco sa subor vola `locators3.resource`
- lokatory v subore su strasne exaktne, treba ich mat dynamicke a ak aj treba presne, tak kratsie. Cim viac `/` a `//` v lokatoroch mas, tym je to nachylnejsie na chyby
- neverim ze to u mna, pri pouziti `Maximize Browser Window` robi to co predpokladas, ze by malo
- to nasledne sposobuje to, ze to cele lahne a neprejde test ani 1x

### Test Cases subor

- Plati to co je napisane vyssie
- zo zaciatku test vyzera ok a citatelne, od riadku 23 uz netusim co sa deje
  - su tam nejake xpathy, tkore netusim co su
  - nerozumiem napr aj to, preco `Select price1    cena je v rozpati` je napisany takto
    - netusim co je 'price1', netusim co znamena, ze je cena v rozpati

- TC subor je subor, ktory realne cita tester/analytik/produktak, ktory z toho by mal vycitat, co sa deje a ci je vhodne aplikaciu poslat na testing/releasnut
- Z testu ako je napisane, naozaj nieje jasne o co ide... 
  - napr: `Item With Index Should Contain Icon2   0`  co je icon2? preco sa pytame, ci nejaky item obsahuje icon2? 
   
### Readme.md subor

- v com bol TC robeny nie je v zasade potrebana informacia
- readme by mal popisovat pracu s tym, co si poslale
- netreba zbytocne pisat co je obsahom requirements

- vysledok testu si zadala cestu k suboru, ale tato cesta:
  - je windows only
  - nikto to neotvori, kedze ta cesta je 'tvoja' na tvojom pc

- chyba mi napriklad spomenute to, ze treba mat stianuty  konkretny driver pre konkretny browser
  - v nasom pripade `chromedriver` s konkretnou verziou atd...

- ak pouzivas .md subor je dobre pouzivat formatovanie, ktore tento subor ponuka
  - https://www.markdownguide.org/basic-syntax/


### requirements.txt subor
 
- subor je v pohode, na konci je komentar (#), ktory sa standardne nedava
- zaroven, v requirements mas aj "robotframework-pabot" co vobec nevyuzivas a nikde nespominas
- je dobre v requirements.txt drzat iba a len potrebne balicky
 

### Git repository

- doporucujem vytvorit .gitignore
- celkovo repository cisty, nie je tam nic chybajuce
- dokumentacia.xlsx je nepotrebny subor, je v nom len log.html a v zasade sa snim neda pracovat

