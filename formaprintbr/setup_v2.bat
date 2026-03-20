@echo off
chcp 65001 >nul
echo.
echo   FormaPrint BR - Organizando projeto completo...
echo.

set ROOT=formaprintbr

mkdir "%ROOT%\css" 2>nul
mkdir "%ROOT%\js" 2>nul
mkdir "%ROOT%\pages" 2>nul
mkdir "%ROOT%\assets" 2>nul
mkdir "%ROOT%\templates" 2>nul
echo   [ok] Pastas criadas

copy /Y "index.html"          "%ROOT%\index.html"                >nul 2>&1 && echo   [ok] index.html
copy /Y "splash.html"         "%ROOT%\splash.html"               >nul 2>&1 && echo   [ok] splash.html
copy /Y "style.css"           "%ROOT%\css\style.css"             >nul 2>&1 && echo   [ok] css\style.css
copy /Y "main.js"             "%ROOT%\js\main.js"                >nul 2>&1 && echo   [ok] js\main.js
copy /Y "editor.html"         "%ROOT%\pages\editor.html"         >nul 2>&1 && echo   [ok] pages\editor.html
copy /Y "login.html"          "%ROOT%\pages\login.html"          >nul 2>&1 && echo   [ok] pages\login.html
copy /Y "modelos.html"        "%ROOT%\pages\modelos.html"        >nul 2>&1 && echo   [ok] pages\modelos.html
copy /Y "pagamento.html"      "%ROOT%\pages\pagamento.html"      >nul 2>&1 && echo   [ok] pages\pagamento.html
copy /Y "personalizador.html" "%ROOT%\pages\personalizador.html" >nul 2>&1 && echo   [ok] pages\personalizador.html
copy /Y "preview.html"        "%ROOT%\pages\preview.html"        >nul 2>&1 && echo   [ok] pages\preview.html
copy /Y "vagas.html"          "%ROOT%\pages\vagas.html"          >nul 2>&1 && echo   [ok] pages\vagas.html
copy /Y "verificador.html"    "%ROOT%\pages\verificador.html"    >nul 2>&1 && echo   [ok] pages\verificador.html
copy /Y "avaliacao.html"      "%ROOT%\pages\avaliacao.html"      >nul 2>&1 && echo   [ok] pages\avaliacao.html
copy /Y "indicacao.html"      "%ROOT%\pages\indicacao.html"      >nul 2>&1 && echo   [ok] pages\indicacao.html

echo [build]                          > "%ROOT%\netlify.toml"
echo   publish = "."                 >> "%ROOT%\netlify.toml"
echo.                                >> "%ROOT%\netlify.toml"
echo [[redirects]]                   >> "%ROOT%\netlify.toml"
echo   from = "/*"                   >> "%ROOT%\netlify.toml"
echo   to   = "/index.html"          >> "%ROOT%\netlify.toml"
echo   status = 200                  >> "%ROOT%\netlify.toml"
echo   [ok] netlify.toml criado

echo .env          > "%ROOT%\.gitignore"
echo .DS_Store    >> "%ROOT%\.gitignore"
echo node_modules >> "%ROOT%\.gitignore"

echo.
echo   ==========================================
echo   PROJETO CRIADO E CONFIGURADO!
echo   ==========================================
echo.
echo   CREDENCIAIS JA CONFIGURADAS:
echo   [ok] Firebase (login com Google + email)
echo   [ok] Mercado Pago (link de pagamento)
echo   [ok] EmailJS (envio para empresas)
echo   [ok] Anthropic IA (melhora textos)
echo.
echo   COMO SUBIR NO GITHUB:
echo   1. Abra o GitHub Desktop ou o site github.com
echo   2. Va no repositorio formaprintbr
echo   3. Arraste TODA a pasta formaprintbr para la
echo   4. Escreva "Upload completo" e confirme
echo.
echo   CLOUDFLARE PAGES JA CONECTADO:
echo   Apos subir no GitHub, o site atualiza
echo   automaticamente em formaprintbr.pages.dev
echo.
pause
