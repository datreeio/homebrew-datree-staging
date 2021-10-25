# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.13-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.13-staging/datree-cli_0.14.13-staging_Darwin_x86_64.zip"
    sha256 "f16ee129a7b7bfecc6e10eff4c79e7b37dcb212e8b40cf51e468c10b76b08080"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.13-staging/datree-cli_0.14.13-staging_Linux_x86_64.zip"
    sha256 "c58619757bec20009cc6851f6397256a50a4844f2e985fa087e1d9d4d6409e85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.13-staging/datree-cli_0.14.13-staging_Linux_arm64.zip"
    sha256 "4f69d4672a5c2086f7a8f240c0b908fc153e2486756108b2a48d4fa22897e075"
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
