QuickSort <-function(data){
  # funkce QuickSort() seradi vzestupne vektor ciselnych dat
  # vstup...neserazeny vektor hodnot
  # vystup ...vzestupne serazeny vektor hodnot
  L=length(data)                                    #delka vstupniho vektoru
  if (is.numeric(data)){                            #podminka pro spravny format vstupniho vektoru
    if (L>=2){                                      #podminka pro delku vstupniho vektoru
      pivot=sample(data,1:1)                        #nahodny vyber pivota ze vstupniho vektoru
      data=c(QuickSort(data[data<pivot]), data[data==pivot], QuickSort(data[data>pivot]))  #vytvoreni serazeneho vektoru 
      #mensi nez pivot, pivot, vetsi nez pivot. soucasne je funkce rekurzivne volana pro oba podvektory
      return(data)                                  #vrati serazeny vektor
      }}
  else { print('Vstupem musi byt ciselny vektor')}  #pokud neni vstupem vektor cisel, hlasi chybu
}