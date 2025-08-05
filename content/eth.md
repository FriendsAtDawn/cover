## Apoya este proyecto con donaciones en Monero

Envía la cantidad que desees a la siguiente dirección:

<p><span id="numero" style="font-size: 10px;"><textarea cols="80">87bHNWFzHmYPwcDg3PDnK2ANvW4rKQJ2Uck7m2FUWLwyZWgHNjG9UDUHsWG6p7vtTuVwCEyVd1VHoQfs4aB7JpzfKjGSL5c</textarea></span><br>
    <button onclick="copiarNumero()">Haz clic para copiar</button>
  </p>

  <script>
    function copiarNumero() {
      const numero = document.getElementById("numero").textContent;
      navigator.clipboard.writeText(numero).then(() => {
        alert("Dirección Monero copiado al portapapeles: " + numero);
      }).catch(err => {
        alert("Error al copiar: " + err);
      });
    }
  </script>
