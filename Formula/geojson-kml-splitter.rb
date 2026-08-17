class GeojsonKmlSplitter < Formula
  desc "Stream large GeoJSON collections into chunked KML files"
  homepage "https://github.com/rioriost/geojson-kml-splitter"
  url "https://github.com/rioriost/geojson-kml-splitter/releases/download/v0.1.0/geojson-kml-splitter-0.1.0.tar.gz"
  sha256 "8d665a86dd4f0125f626d22718bbb2734e9f608adcd4bd0c661962d3c2f1df72"
  license "MIT"

  depends_on "python@3.14"

  def install
    libexec.install "src/geojson_kml_splitter"
    (bin/"geojson-kml-split").write <<~SH
      #!/bin/bash
      PYTHONPATH="#{libexec}" exec "#{formula_opt_bin("python@3.14")}/python3.14" -m geojson_kml_splitter "$@"
    SH
  end

  test do
    (testpath/"sample.geojson").write <<~JSON
      {"type":"FeatureCollection","features":[
        {"type":"Feature","id":1,"properties":{"name":"one"},"geometry":{"type":"Point","coordinates":[139.7,35.6]}},
        {"type":"Feature","id":2,"properties":{"name":"two"},"geometry":{"type":"Point","coordinates":[139.8,35.7]}}
      ]}
    JSON
    output = shell_output("#{bin}/geojson-kml-split sample.geojson -n 1 --quiet")
    assert_match "2 Features → 2 KML", output
    assert_path_exists testpath/"sample-kml.zip"
  end
end
