## Apoya este proyecto con donaciones en Ethereum

Envía la cantidad que desees a la siguiente dirección:

<p>Ethereum; <span id="numero">0x5963dA935C2263085e047DaCD957A044E2C950A3</span>
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
