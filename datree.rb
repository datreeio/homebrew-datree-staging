# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.13-rc/datree-cli_1.1.13-rc_Darwin_x86_64.zip"
    sha256 "0fda072d16455dd675de485fd3685718b4879a19c1246ae550220daf3d00e16a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.13-rc/datree-cli_1.1.13-rc_Darwin_arm64.zip"
    sha256 "30b5cee1edb859b77a8b7658274f7199aa801e37fd72767ff3114fb755d508de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.13-rc/datree-cli_1.1.13-rc_Linux_x86_64.zip"
    sha256 "f2cc897fd77deda8e1e038c6affaec33db15f57e0c848ee9f0e462d37366ca10"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.13-rc/datree-cli_1.1.13-rc_Linux_arm64.zip"
    sha256 "b10921e53f80074c30cdfae479734caf01b06f05bf198b7b031c7b7b233bee30"
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
