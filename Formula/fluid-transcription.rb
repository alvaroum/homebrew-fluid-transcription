class FluidTranscription < Formula
  desc "Native macOS CLI for transcription, speaker diarization, and combined media-processing workflows"
  homepage "https://github.com/alvaroum/fluid-transcription"
  url "https://github.com/alvaroum/fluid-transcription/releases/download/v202604.5/fluid-transcription-202604.5-macos-arm64.tar.gz"
  version "202604.5"
  sha256 "6130e99162de4acb4348c6dc93e782e3c7b713f7738d9883e24c81a628017862"
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
