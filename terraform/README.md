```
$ terraform output
database_host_fqdn = tolist([
  "rc1b-0ttgykzha9r4kngv.mdb.yandexcloud.net",
  "rc1d-yhvl6ky1i9moooek.mdb.yandexcloud.net",
])
load_balancer_public_ip = tolist([
  "51.250.47.227",
])
```

Честно говоря, из описания домашки непонятно что именно нужно представить в
качестве результата (помимо репозитария). Пусть будет вывод *output*.

* файл ключа key.json для сервисного аккаунта создан, используется через файл
*variables.tf*
