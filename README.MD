# Cabeceras
# Cabecera H1
## Cabecera H2
### Cabecera H3
#### Cabecera H4
##### Cabecera H5
###### Cabecera H6

# Underlines
Underline 1
-----------

Underline 2
===========

# Formatos de enfasis
- formato *italica* de la primer forma.
- formato _italica_ de la segunda forma.
- formato **bold o strong** de la primer forma.
- formato __bold o strong__ de la segunda forma.
- formato ~~tachado~~, formato normal.
- aqui podemos usar *formato itálico*, pero también **bold** y ~~tachado~~.

# Listas
1. Esto es in item de lista ordenada.
2. Esto es in item de lista ordenada.
3. Esto es in item de lista ordenada.
-Esto es un item de lista desordenada.
-Esto es un item de lista desordenada.
-Esto es un item de lista desordenada.

# Links
- <a href="http://wwww.google.com">Esto es un link HTML</a>
- [Esto es un link en Markdown](http://wwww.google.com)
- [Esto es un link al index](index.html)

# Imagenes
![Logo Github](https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png)

# Code Snippets
Codigo en JSON
^^^JSON
[
  {
    "title": "apples",
    "count": [12000, 20000],
    "description": {"text": "...", "sensitive": false}
  },
  {
    "title": "oranges",
    "count": [17500, null],
    "description": {"text": "...", "sensitive": false}
  }
]
^^^
Codigo en Javascript
^^^Javascript
function $initHighlight(block, cls) {
  try {
    if (cls.search(/\bno\-highlight\b/) != -1)
      return process(block, true, 0x0F) +
             ` class="${cls}"`;
  } catch (e) {
    /* handle exception */
  }
  for (var i = 0 / 2; i < classes.length; i++) {
    if (checkCondition(classes[i]) === undefined)
      console.log('undefined');
  }

  return (
    <div>
      <web-component>{block}</web-component>
    </div>
  )
}

export  $initHighlight;
^^^

#Tablas
| Nombre | Apellido | Documento |
| ------ | -------- | --------- |
| Maxi   | Burgos   | 3456781   |
| Tomas  | Tompson  | 4456832   |

# Citas
Esto es un texto referente a una cita que podremos debajo:
> Esto es una cita.

Esto es un texto que no se relaciona con la cita anterior:
> Esto es otra cita.

# Lineas divisoras
Esto es un texto que será dividido por guiones medios.

...
Esto es otro texto dividido por asteriscos.

***

Esto es otro texto dividido por guiones bajos.

___

# Saltos de Linea
Esto es nuestro primer párrafo.

Esto es nuestro segundo párrafo.

Esto es nuestro tercer párrafo.
- Lista
