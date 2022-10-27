# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.45-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.45-rc/datree-cli_1.6.45-rc_Darwin_x86_64.zip"
    sha256 "aa96175fd69abf1d0f15e5348d237d9c0b2c899c3f7d16ec1f8cb1a5dd793f72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.45-rc/datree-cli_1.6.45-rc_Darwin_arm64.zip"
    sha256 "0285150be253ff8997864a2fe44f8137f459a500403dba63c52d2b798cec4a98"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.45-rc/datree-cli_1.6.45-rc_Linux_x86_64.zip"
    sha256 "b67ebc917e5fa6ffd19a8875c4b0cefaff45d9dcfc65b48501f9aa63c33227a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.45-rc/datree-cli_1.6.45-rc_Linux_arm64.zip"
    sha256 "fd469793a8ff622b33e62e9b40cb19af89392970ae20855eda8d21a1791b738b"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
