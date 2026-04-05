cask "virtumic" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/ShotgunZZ/VirtuMic/releases/download/v#{version}/VirtuMic.zip"
  name "VirtuMic"
  desc "Open-source virtual microphone with noise gate, EQ, and compressor"
  homepage "https://github.com/ShotgunZZ/VirtuMic"

  depends_on macos: ">= :ventura"

  app "VirtuMic.app"

  postflight do
    system_command "#{appdir}/VirtuMic.app/Contents/MacOS/setup.sh"
  end

  uninstall quit: "com.virtumic.app"

  caveats <<~EOS
    VirtuMic requires BlackHole 2ch virtual audio driver.
    The installer will attempt to set it up automatically.

    If BlackHole is not installed, run:
      brew install blackhole-2ch

    VirtuMic is unsigned. On first launch, right-click the app → Open.
  EOS
end
