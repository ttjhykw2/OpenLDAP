# OpenLDAP

Docker imageを使って、簡単に、SSLに対応したOpenLDAP Serverを立てる

## Usage

###起動
```bash
# docker-compose up -d
```

###サーチ
```bash
$ ldapsearch -x -H ldap://localhost -b dc=example,dc=com -D "cn=admin,dc=example,dc=com" -w password
```
```bash
$ ldapsearch -x -H ldaps://localhost -b dc=example,dc=com -D "cn=admin,dc=example,dc=com" -w password
```

サーバ側の証明書が自己証明書の場合
LDAP Client側の　`/etc/openldap/ldap.conf` ファイルの行を

`TLS_REQCERT	never`
もしくは
`
TLS_REQCERT	try
`
にすること。デフォルトは、
`
TLS_REQCERT	demand
`

###停止
```bash
# docker-compose down -v
```
