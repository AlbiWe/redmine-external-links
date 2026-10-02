document.addEventListener('DOMContentLoaded', function () {
  const currentHostname = window.location.hostname;
  document.querySelectorAll('.wiki a.external').forEach(function (link) {
    try {
      const url = new URL(link.href, window.location.href);

      // damit irrtümlich eingetragene komplette Links zum Redmine-Host ausgenommen sind
      if (url.hostname === currentHostname) {
        return;
      }

      link.setAttribute('target', '_blank');
      link.setAttribute('rel', 'noopener noreferrer');
    } catch (e) {
      // ungültige URLs ignorieren
    }
  });
});
