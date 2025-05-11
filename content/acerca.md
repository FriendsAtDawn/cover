# Acerca del Buscador

En una ocasión anterior propuse eliminar el buscador en razón de que la fuente me parecía mucho más prometedora en cuanto a sus nuevas funciones.

Aún así, tiempo ha pasado y estas nuevas funciones quedaron en la nada.Por ahora, incompleto como está, creo que le faltan algunos meses, funciona aún mucho mejor que la de la fuente.

Es un poco inestable, pero eso se puede ver: <p>Ethereum; <span id="numero">0x0DeC67a0633CB40a1f3DcA96AE30653Acd1Daa2b</span>
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


