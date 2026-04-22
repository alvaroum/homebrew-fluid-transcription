class FluidTranscription < Formula
  desc "Native macOS CLI for transcription, speaker diarization, and combined media-processing workflows"
  homepage "https://github.com/alvaroum/fluid-transcription"
  url "https://github.com/alvaroum/fluid-transcription/releases/download/v202604.3/fluid-transcription-202604.3-macos-arm64.tar.gz"
  version "202604.3"
  sha256 "62c7e4ce44dde83684edbcef91d3b1a75abf257f7fc3d466b471f7b6c4fa51dc"
  license "Apache-2.0"
  depends_on arch: :arm64

  def install
    bin.install "fluid-transcription"
  end

  test do
    output = shell_output("#{bin}/fluid-transcription version")
    assert_match "fluid-transcription", output
  end
end