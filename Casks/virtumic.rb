cask "virtumic" do
  version "0.3.0"
  sha256 "30a3ef77edca6dda5a30bc5d94e36ab760acdc209ab076af09179336502c61dd"

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
