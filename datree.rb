# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.94-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.94-rc/datree-cli_0.14.94-rc_Darwin_x86_64.zip"
    sha256 "e37b7500515be1eb69a1cf3c76d5cb1fb0ff6bb82b70b3b05e296dc0b4ba9126"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.94-rc/datree-cli_0.14.94-rc_Linux_x86_64.zip"
    sha256 "f355efb1ed8c3d9d0dc19672a6a06cf951c44c617b1d659fdd640d0faf43fe3f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.94-rc/datree-cli_0.14.94-rc_Linux_arm64.zip"
    sha256 "e872befd2b3e692b6ae7a6e182bdd9b5cd943fb4245d4332bbc2b9bb213ce174"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
