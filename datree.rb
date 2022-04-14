# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.9-rc/datree-cli_1.2.9-rc_Darwin_x86_64.zip"
    sha256 "145fbbc08bfa54f9c0754246e8c3aeef67f691d412f582a3c4c370528dade20d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.9-rc/datree-cli_1.2.9-rc_Darwin_arm64.zip"
    sha256 "2d7d8a931380aa5f3c50ffaee19e0edcbf6e901a2dab0973295ad313a474f897"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.9-rc/datree-cli_1.2.9-rc_Linux_x86_64.zip"
    sha256 "57a875549f6b14818fae0195a32ec751847ab856474457c158955f6bec6be08a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.9-rc/datree-cli_1.2.9-rc_Linux_arm64.zip"
    sha256 "201288d7c98ae3f0076144fca05fdfe677011d762fe4027388a4f28839bdc97f"
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
