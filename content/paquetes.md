
# Ethereum

Por alguna razón que no alcanzo a entender del todo, en Paraguay no se puede recibir dinero sino de manera abstrusa. Por ello me hice de una billetera ETH.

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
