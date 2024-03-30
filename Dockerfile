# Use the official Keycloak image from Quay.io
FROM quay.io/keycloak/keycloak:latest

# Expose the ports
EXPOSE 8443

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_DB=postgres \
    KC_DB_URL=jdbc:postgresql://keycloak_871l_user:WUNfz0PsMctOWHtAciLLz1p4zP5HISav@dpg-co44tgcf7o1s738ojaug-a.oregon-postgres.render.com:5432/keycloak_871l \
    KC_DB_USERNAME=keycloak_871l_user \
    KC_DB_PASSWORD=WUNfz0PsMctOWHtAciLLz1p4zP5HISav

# Set the command to start Keycloak with specified options
CMD ["start", "--auto-build", "--db=postgres"]

