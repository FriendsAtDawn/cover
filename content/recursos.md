<div class="iframe-wrapper">
<iframe
  id="csj"
  title="csj"
  width="100%"
  height="100%"
  style="border: none;"
  src="https://csj.global.ssl.fastly.net">
</iframe>
<div class="open-in-new-tab-button">↗</div>
</div>

<script>
  document.querySelectorAll('.open-in-new-tab-button').forEach(button => {
  button.addEventListener('click', function(e) {
    e.stopPropagation(); // Evita que el clic se propague al iframe
    const iframe = this.parentElement.querySelector('iframe');
    window.open(iframe.src, '_blank');
  });
});
</script>

