#!/usr/bin/env bash
set -oue pipefail

# Enable KWin Blur and Translucency globally for Plasma 6
mkdir -p /etc/xdg
cat << 'EOF' >> /etc/xdg/kwinrc
[Plugins]
blurEnabled=true
translucencyEnabled=true
contrastEnabled=true
EOF

# Set default Kvantum theme engine for Qt apps
cat << 'EOF' >> /etc/environment
QT_STYLE_OVERRIDE=kvantum
EOF

chmod +x config/scripts/setup-tokimeki-ui.sh
