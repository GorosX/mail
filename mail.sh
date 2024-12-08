# Instalar Mailutils

echo "Instalando Mailutils..."

apt install -y mailutils

# Preguntar al usuario por la dirección de correo, CC y el asunto

read -p "Introduce la dirección de correo a la que quieres enviar el mensaje: " EMAIL
read -p "Introduce el asunto del mensaje: " ASUNTO
read -p "Introduce el contenido del mensaje: " MENSAJE
# Enviar el correo electrónico

echo $MENSAJE | mail -s "$ASUNTO" "$EMAIL"

echo "Se ha enviado un mensaje de confirmación a $EMAIL."
