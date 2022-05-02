# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.1-rc/datree-cli_1.4.1-rc_Darwin_x86_64.zip"
    sha256 "b4cb02535093163a46ac53d0f33cc7c11ace15f834368c44963aa4f2747d4e1e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.1-rc/datree-cli_1.4.1-rc_Darwin_arm64.zip"
    sha256 "90496b58c43e9431942670d5ee8a34c78e81ea305512900e441c63aa57d886bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.1-rc/datree-cli_1.4.1-rc_Linux_x86_64.zip"
    sha256 "165af18350befc671c1d4a1429c67e54d1bc565036e5d54376954ba2ab24e951"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.1-rc/datree-cli_1.4.1-rc_Linux_arm64.zip"
    sha256 "b7a3c923bcccaecfcae88aca13f4e057053834fe9d5edd953e584a6b2b0448f2"
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
