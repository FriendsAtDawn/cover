## Apoya este proyecto con donaciones en Monero

<label for="numero">Monero:</label>
<p><textarea id="numero"cols="96" rows="1">87bHNWFzHmYPwcDg3PDnK2ANvW4rKQJ2Uck7m2FUWLwyZWgHNjG9UDUHsWG6p7vtTuVwCEyVd1VHoQfs4aB7JpzfKjGSL5c</textarea><br />
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
