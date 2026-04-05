cask "virtumic" do
  version "0.1.0"
  sha256 "3c0412fb33d7f111aab546ec40986546c92ed22826b6e1e4edc357a07e9dd26d"

  url "https://github.com/ShotgunZZ/VirtuMic/releases/download/v#{version}/VirtuMic.zip"
  name "VirtuMic"
  desc "Open-source virtual microphone with noise gate, EQ, and compressor"
  homepage "https://github.com/ShotgunZZ/VirtuMic"

  depends_on macos: ">= :ventura"

  app "VirtuMic.app"

  depends_on cask: "blackhole-2ch"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/VirtuMic.app"]
  end

  uninstall quit: "com.shotgunzz.virtumic"
end
