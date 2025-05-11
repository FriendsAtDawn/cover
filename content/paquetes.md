
# Ethereum

Por alguna razón que no alcanzo a entender del todo, en Paraguay no se puede recibir dinero sino de manera abstrusa. Por ello me hice de una billetera ETH.

<p>Ethereum; <span id="numero">0x0DeC67a0633CB40a1f3DcA96AE30653Acd1Daa2b</span>
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
