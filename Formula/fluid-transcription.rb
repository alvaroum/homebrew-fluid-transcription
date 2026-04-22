class FluidTranscription < Formula
  desc "Native macOS CLI for transcription, speaker diarization, and combined media-processing workflows"
  homepage "https://github.com/alvaroum/fluid-transcription"
  url "https://github.com/alvaroum/fluid-transcription/releases/download/v202604.4/fluid-transcription-202604.4-macos-arm64.tar.gz"
  version "202604.4"
  sha256 "ec9e8d790fa071d96f0885c91749ba23f00bd70caff24e33c3035804c837c743"
  license "Apache-2.0"
  depends_on arch: :arm64

  def install
    bin.install "ft"
    bin.install_symlink "ft" => "fluid-transcription"
  end

  test do
    output = shell_output("#{bin}/ft version")
    assert_match "fluid-transcription", output
  end
end