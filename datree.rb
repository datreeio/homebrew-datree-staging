# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.6-rc/datree-cli_1.3.6-rc_Darwin_x86_64.zip"
    sha256 "c7af15920ea672c76586b4f0f654dd1821a410a75e7eda9582dbe1458d9f53ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.6-rc/datree-cli_1.3.6-rc_Darwin_arm64.zip"
    sha256 "379441d644e0e96a8e65ee7b9e1efbbd96e5a468c08cdf11947c64d389b7314b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.6-rc/datree-cli_1.3.6-rc_Linux_x86_64.zip"
    sha256 "6a13b6f3ef4bea207a05ca5714586a6de0bde7eafec02f8d049319e35f402cc7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.6-rc/datree-cli_1.3.6-rc_Linux_arm64.zip"
    sha256 "b3504775eed795417a9209750e308b43cbcf14d8d2b9efa3853255b548f7e5fc"
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
