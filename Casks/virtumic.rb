cask "virtumic" do
  version "0.2.0"
  sha256 "ec51fe083096fa36446415b0831a5fe0278eb7cae434d0bd90b2a51e1055f547"

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
