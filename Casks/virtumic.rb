cask "virtumic" do
  version "0.1.0"
  sha256 "4402388e105b05547a63f4110bc4ca3d79825915461eb2918c00b748f79e756f"

  url "https://github.com/ShotgunZZ/VirtuMic/releases/download/v#{version}/VirtuMic.zip"
  name "VirtuMic"
  desc "Open-source virtual microphone with noise gate, EQ, and compressor"
  homepage "https://github.com/ShotgunZZ/VirtuMic"

  depends_on macos: ">= :ventura"

  app "VirtuMic.app"

  depends_on cask: "blackhole-2ch"

  uninstall quit: "com.virtumic.app"

  caveats <<~EOS
    VirtuMic is unsigned. On first launch, right-click the app → Open.
  EOS
end
