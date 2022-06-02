# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "v1.4.41-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.41-rc/datree-cli_v1.4.41-rc_Darwin_x86_64.zip"
    sha256 "d8b3a4b1fc35cda0262e51cbe314aadfe0248931908222e0f638c3f5c1e1f7b7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/v1.4.41-rc/datree-cli_v1.4.41-rc_Darwin_arm64.zip"
    sha256 "b39722932acd453f0acf1849f0494b47082092ff3c676d12768600bf11b3e90e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/v1.4.41-rc/datree-cli_v1.4.41-rc_Linux_x86_64.zip"
    sha256 "b9dfa5620f79b23c491940bb18fe1834ee243aace5e6e79802b19f423db48aa1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/v1.4.41-rc/datree-cli_v1.4.41-rc_Linux_arm64.zip"
    sha256 "a6aea3de88ae11a8ec8190261f5bdeed5932fb8cf79425c759df21f72d53a4c9"
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
