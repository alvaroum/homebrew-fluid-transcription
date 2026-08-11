class FluidTranscription < Formula
  desc "Native macOS CLI for transcription, diarization, and media processing"
  homepage "https://github.com/alvaroum/fluid-transcription"
  url "https://github.com/alvaroum/fluid-transcription/releases/download/v202608.1/fluid-transcription-202608.1-macos-arm64.tar.gz"
  version "202608.1"
  sha256 "184324b0fce2ff17b7a1145a78b374ec1732db5895991091d0c07159f1019865"
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
