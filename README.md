Single table strategy:

Cons: meget gentagene data, tager længere tid 
pros: 


Table per class strategy:

    Cons: ved mange til mange forhold mangler mellemtabeller
    Pros: nemt at håndtere fordi hver tabel repræsenterer en tabel for sig selv. specifikke tabeller sørger for at queries er meget specifikke for at fremfinde data i en formindsked udgave der ikke er så tung potentielt.

Join table strategy:
    Cons: ved mange tabeller bliver ens queries ekstra lange og dermed også mere komplekse at skrive. 
    Pros: forhindrer gentagene rækker i forhold til opbevaring af data igennem bruget af mellem tabeller. 
