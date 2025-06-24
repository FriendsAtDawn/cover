# Acerca del Buscador

En una ocasión anterior propuse eliminar el buscador en razón de que la fuente me parecía mucho más prometedora en cuanto a sus nuevas funciones.

Aún así, tiempo ha pasado y estas nuevas funciones quedaron en la nada.Por ahora, incompleto como está, creo que le faltan algunos meses, funciona aún mucho mejor que la de la fuente.

Es un poco inestable, pero eso se puede ver:



## Mi experiencia usando Xapian para búsquedas

Comencé a experimentar con el motor de búsqueda Xapian porque, sinceramente, las consultas en la página de la CSJ solían ser bastante complicadas de realizar. (¡Dato curioso! En los últimos días, el buscador oficial ha mejorado muchísimo y ahora es mucho más fácil de usar). Entiendo que, por la gran cantidad de solicitudes diarias, a veces hacen que el acceso sea un poco más difícil a propósito.

Aun así, hay una gran diferencia: ellos cuentan con toda la base de datos completa, mientras que yo solo he logrado compilar una parte. Mi objetivo es poder reunir toda la información y mantener la misma rapidez y eficiencia en las búsquedas.

Últimamente me he enfocado en mejorar el reconocimiento de texto (OCR) de los archivos PDF, aunque no estoy seguro de haber logrado grandes avances. Este proceso es lento, consume muchos recursos y, en la práctica, el resultado final no suele diferir demasiado del original en la mayoría de los casos (¡y ya van más de 100 mil resoluciones procesadas!).

Lamentablemente, como ocurre con muchos otros trabajos de este tipo, el esfuerzo que requiere mejorar los OCR no siempre se ve reflejado en los resultados.

## Apoya este proyecto con donaciones en Ethereum

Si te ha gustado este trabajo y quieres ayudar a que siga creciendo, puedes hacer una donación en Ethereum. Cada aporte, por pequeño que sea, es muy valioso para continuar mejorando la base de datos y optimizando el motor de búsqueda.

Para donar, simplemente envía la cantidad que desees a la siguiente dirección de Ethereum:

<p>Ethereum; <span id="numero">0x0b8CBceD8790Dd8ae4aEB3C3df687a3C95892DA1</span>
    <button onclick="copiarNumero()">Haz clic para copiar</button>
  </p>

  <script>
    function copiarNumero() {
      const numero = document.getElementById("numero").textContent;
      navigator.clipboard.writeText(numero).then(() => {
        alert("Dirección ETH copiado al portapapeles: " + numero);
      }).catch(err => {
        alert("Error al copiar: " + err);
      });
    }
  </script>

  
