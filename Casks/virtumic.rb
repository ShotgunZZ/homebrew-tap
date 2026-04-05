cask "virtumic" do
  version "0.2.1"
  sha256 "3d0fd48a9d927a30961048ccf069c1ed1a3e61b81baa3d088dab3f9cf6589280"

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
