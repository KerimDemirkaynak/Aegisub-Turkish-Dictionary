#!/bin/bash

# Renkler (Görsellik önemli)
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}=========================================${NC}"
echo -e "${BLUE}   Aegisub Türkçe Sözlük Yükleyici v1.0  ${NC}"
echo -e "${BLUE}=========================================${NC}"
echo ""

# Scriptin çalıştığı klasörü al
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# --- ADIM 1: Olası Hedef Klasörlerin Listesi ---
POTENTIAL_PATHS=(
    "$HOME/Library/Application Support/Aegisub/dictionaries"                 # macOS (Standart)
    "$HOME/.aegisub/dictionaries"                                            # Linux (Eski/Standart)
    "$HOME/.config/aegisub/dictionaries"                                     # Linux (XDG Standart)
    "$HOME/.var/app/org.aegisub.Aegisub/config/aegisub/dictionaries"         # Linux (Flatpak)
    "$HOME/snap/aegisub-iam/common/.aegisub/dictionaries"                    # Linux (Snap)
)

FOUND_ANY=0

echo -e "🔎 Aegisub kurulumları aranıyor..."

# --- ADIM 2: Otomatik Arama ve Yükleme ---
for DEST in "${POTENTIAL_PATHS[@]}"; do
    # Klasörün "üst dizini" var mı diye bakıyoruz
    PARENT_DIR=$(dirname "$DEST")
    
    if [ -d "$PARENT_DIR" ]; then
        echo -e "${YELLOW}Bulundu:${NC} $PARENT_DIR"
        
        # dictionaries klasörünü oluştur (yoksa)
        mkdir -p "$DEST"
        
        # Kopyala
        cp "$DIR/tr_TR.aff" "$DEST/"
        cp "$DIR/tr_TR.dic" "$DEST/"
        
        if [ $? -eq 0 ]; then
            echo -e "   ✅ ${GREEN}Sözlük yüklendi!${NC}"
            FOUND_ANY=1
        else
            echo -e "   ❌ ${RED}Kopyalama hatası!${NC}"
        fi
    fi
done

# --- ADIM 3: Hiçbir Şey Bulunamazsa Manuel Sor ---
if [ $FOUND_ANY -eq 0 ]; then
    echo ""
    echo -e "${RED}⚠️  Otomatik olarak Aegisub klasörü bulunamadı.${NC}"
    echo "Aegisub'ı farklı bir yere kurmuş olabilirsiniz."
    echo ""
    echo -e "${YELLOW}Lütfen Aegisub'ın 'dictionaries' klasör yolunu sürükleyip buraya bırakın (veya yazın):${NC}"
    read -p "> " USER_PATH
    
    # Kullanıcı tırnak işaretiyle girerse temizle
    USER_PATH=${USER_PATH//\"/}
    
    if [ -d "$USER_PATH" ]; then
        cp "$DIR/tr_TR.aff" "$USER_PATH/"
        cp "$DIR/tr_TR.dic" "$USER_PATH/"
        echo -e "${GREEN}✅ Başarıyla şuraya yüklendi:${NC} $USER_PATH"
    else
        echo -e "${RED}❌ Geçersiz klasör yolu! İşlem iptal edildi.${NC}"
    fi
else
    echo ""
    echo -e "${GREEN}🎉 Kurulum başarıyla tamamlandı!${NC}"
    echo "Aegisub'ı yeniden başlatıp Yazım Denetimi menüsünden Türkçe'yi seçebilirsiniz."
fi

echo ""
read -p "Çıkmak için Enter'a basın..."
