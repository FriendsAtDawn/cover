# Condiciones de uso.

Todas la resoluciones disponibles al momento y las que luego se disponga se las debe comparar con las disponibles en ```www.csj.gov.py```. Estas pretenden ser copias fieles de aquellas, pero como en parte se utiliza para ello un sistema automatizado es imprescindible corroborar con la fuente respectiva utilizando los datos de número de resolución y año. En ese sentido los textos contenidos en esta web son solo referencias de aquellas y no pueden ni pretenden subsituir a la fuente original, por lo que todo usuario se compromete a hacer las comparaciones debidas adecuadas con el solo hecho de efectuar una búsqueda.

Y por último, no olvides descansar los ojos y mantenerte hidratado.

<a name=disclaimer id=disclaimer></a>

---

 <p>Ethereum<span id="numero">0x0DeC67a0633CB40a1f3DcA96AE30653Acd1Daa2b</span>
    <button onclick="copiarNumero()">Haz clic para copiar</button>
  </p>

  <script>
    function copiarNumero() {
      const numero = document.getElementById("numero").textContent;
      navigator.clipboard.writeText(numero).then(() => {
        alert("Número copiado al portapapeles: " + numero);
      }).catch(err => {
        alert("Error al copiar: " + err);
      });
    }
  </script>

