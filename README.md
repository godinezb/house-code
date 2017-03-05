## Setup

1. bundle
2. rails db:setup
3. rails db:migrate
4. rails db:seed
5. rails s
6. Visit: http://localhost:3000/v1/properties

**Tests**
Realice pruebas para las validaciones de los datos, para correr dichas pruebas usar el comando:

1. rspec -f d

## Notas

* Si bien el formato de los endpoints no incluía ningún namespace decidí versionar
la api para seguir buenas prácticas de código. Por lo que todos los enpoints llevan
el prefijo v1, por ejemplo para GET de todas las propiedades se usa: /v1/properties/ y así
en cada petición.

* La dirección para hacer las peticiones a la API en heroku es: [armandogbr-house-code.herokuapp.com/v1/]: https://armandogbr-house-code.herokuapp.com/v1/
