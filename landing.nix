# The site's landing page: each package under its heading, linked to
# its own haddock contents, with its version and synopsis.
{ lib, writeText, groups, dir, hpkgs }:

let
  esc = lib.escapeXML;

  synopsis = p: esc (lib.removeSuffix "." p.meta.description);

  entry = name:
    let p = hpkgs.${name};
    in ''
      <li>
        <a href="${dir name}/index.html">${dir name}</a>
        <span class="version">${p.version}</span>
        <span class="synopsis">${synopsis p}</span>
      </li>
    '';

  group = g: ''
    <h2>${esc g.title}</h2>
    <ul class="packages">
    ${lib.concatMapStrings entry g.packages}</ul>
  '';
in
  writeText "index.html" ''
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ppad</title>
    <link href="linuwial.css" rel="stylesheet" type="text/css"
      title="Linuwial" />
    <link rel="stylesheet" type="text/css" href="quick-jump.css" />
    <link rel="stylesheet" type="text/css"
      href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700" />
    <script src="haddock-bundle.min.js" async="async"
      type="text/javascript"></script>
    <style>
      ul.packages { list-style: none; padding: 0; margin: 0 0 2em 0; }
      ul.packages li {
        display: grid;
        grid-template-columns: 7em 4em 1fr;
        column-gap: 1em;
        padding: 0.25em 0;
      }
      ul.packages .version {
        color: #666;
        font-variant-numeric: tabular-nums;
      }
      @media only screen and (max-width: 600px) {
        ul.packages li { grid-template-columns: 7em 1fr; }
        ul.packages .synopsis { grid-column: 1 / -1; }
      }
    </style>
    </head>
    <body>
    <div id="package-header">
      <span class="caption">ppad</span>
      <ul class="links" id="page-menu">
        <li><a href="modules.html">Modules</a></li>
        <li><a href="doc-index.html">Index</a></li>
      </ul>
    </div>
    <div id="content">
    <h1>ppad</h1>
    <p>Haddock documentation for ppad's libraries and tools.</p>
    ${lib.concatMapStrings group groups}
    </div>
    </body>
    </html>
  ''
