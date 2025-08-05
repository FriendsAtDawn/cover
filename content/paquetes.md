
# Monero

Por alguna razón que no alcanzo a entender del todo, en Paraguay no se puede recibir dinero sino de manera abstrusa. Por ello me hice de una billetera Monero.

<p>Ethereum; <span id="numero">87bHNWFzHmYPwcDg3PDnK2ANvW4rKQJ2Uck7m2FUWLwyZWgHNjG9UDUHsWG6p7vtTuVwCEyVd1VHoQfs4aB7JpzfKjGSL5c</span>
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
