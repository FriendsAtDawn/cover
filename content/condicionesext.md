# Monero

Por alguna razón que no alcanzo a entender del todo, en Paraguay no se puede recibir dinero sino de manera abstrusa. Por ello me hice de una billetera Monero.

<label for="numero">Monero:</label>

<p><textarea id="numero" cols="48" rows="2">87bHNWFzHmYPwcDg3PDnK2ANvW4rKQJ2Uck7m2FUWLwyZWgHNjG9UDUHsWG6p7vtTuVwCEyVd1VHoQfs4aB7JpzfKjGSL5c</textarea><br/>
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

---

# ¡Gracias!

Aparte de todas las instituciones de internet prácticamente --Cloudflare, Replit, Github, ngrok, recoll, Interserver--, esta página sería imposible sin el trabajo de Idalina Insfrán-Villalba y sus muy apropiadas correcciones, que realiza en las pausas que se hace mientras prepara su tesis.

Update: Tesis ☑️

