# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.27-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.27-rc/datree-cli_1.8.27-rc_Darwin_x86_64.zip"
    sha256 "70bb7dbbd54a80882c5f0a15ccfee880a635e5160bb2ed5f2959240f6a324715"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.27-rc/datree-cli_1.8.27-rc_Darwin_arm64.zip"
    sha256 "4f102f76f03046344085bb673ac45cb90ddff27dbb19534407cf1ba4da13038f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.27-rc/datree-cli_1.8.27-rc_Linux_x86_64.zip"
    sha256 "8fcf63537a192370f6c338dfaa265a3827fdaadbc72fb582b6808589655bf3ab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.27-rc/datree-cli_1.8.27-rc_Linux_arm64.zip"
    sha256 "47bafeeb08d1eabe96df510de687a4697e9a75ecfa0da46463eaa22750a444e7"
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
