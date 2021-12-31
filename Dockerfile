FROM osixia/openldap:1.5.0
 
#ドメイン
ENV LDAP_DOMAIN=example.com
#管理者パスワード
ENV LDAP_ADMIN_PASSWORD=password

# ユーザーデータを作成するためのLDIFファイルをコンテナにコピー
COPY user.ldif /container/service/slapd/assets/config/bootstrap/ldif/custom/
