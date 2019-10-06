import json, httpClient

type
  Element = object
    Fecha, Profundidad, Magnitud, RefGeografica : string

var client = newHttpClient()
var x = client.getContent("https://api.gael.cl/general/public/sismos")
let jsonObject = parseJson(x)
let temblor = to(jsonObject[0], Element)
echo "Programita para saber dónde fue el último temblor\nFecha: ", temblor.Fecha, "\nReferencia geográfica: ", temblor.RefGeografica, "\nLa magnitud fue de: ", temblor.Magnitud, "\nProfundidad: ", temblor.Profundidad, " Km" 
