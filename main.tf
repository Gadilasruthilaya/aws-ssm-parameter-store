provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value =var.params[count.index].value
  overwrite = true
  key_id = "f6210ff7-c501-4ec2-a59c-9a3a2354d155"

}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopspractice.store/", type =  "String" },
    { name = "roboshop.dev.frontend.user_url", value =  "http://user-dev.devopspractice.store/", type =  "String" },
    { name = "roboshop.dev.frontend.cart_url", value =  "http://cart-dev.devopspractice.store/", type =  "String" },
    { name = "roboshop.dev.frontend.shipping_url", value =  "http://shipping-dev.devopspractice.store/", type =  "String" },
    { name = "roboshop.dev.frontend.payment_url", value =  "http://payment-dev.devopspractice.store/", type =  "String" },
    { name = "roboshop.dev.cart.REDIS_HOST", value =  "elasticache-dev.f4jvg1.clustercfg.use1.cache.amazonaws.com", type =  "String" },
    { name = "roboshop.dev.cart.CATALOGUE_HOST", value =  "catalogue-dev.devopspractice.store", type =  "String" },
    { name = "roboshop.dev.cart.CATALOGUE_PORT", value =  "80", type =  "String" },
    { name = "roboshop.dev.catalogue.MONGO", value =  "true", type =  "String" },
    { name = "roboshop.dev.payment.CART_HOST", value =  "cart-dev.devopspractice.store", type =  "String" },
    { name = "roboshop.dev.payment.CART_PORT", value =  "80", type =  "String" },
    { name = "roboshop.dev.payment.USER_HOST", value =  "user-dev.devopspractice.store", type =  "String" },
    { name = "roboshop.dev.payment.USER_PORT", value =  "80", type =  "String" },
    { name = "roboshop.dev.payment.AMQP_HOST", value =  "rabbitmq-dev.devopspractice.store", type =  "String" },
    { name = "roboshop.dev.payment.AMQP_USER", value =  "roboshop", type =  "String" },
    { name = "roboshop.dev.shipping.CART_ENDPOINT", value =  "cart-dev.devopspractice.store:80", type =  "String" },
    { name = "roboshop.dev.shipping.DB_HOST", value =  "mysql-dev.cluster-c3eyqiw0acbn.us-east-1.rds.amazonaws.com", type =  "String" },
    { name = "roboshop.dev.user.MONGO", value =  "true", type =  "String" },
    { name = "roboshop.dev.user.REDIS_HOST", value =  "elasticache-dev.f4jvg1.clustercfg.use1.cache.amazonaws.com", type =  "String" },
   # { name = "roboshop.dev.user.MONGO_URL", value =  "mongodb://mongodb-dev.devopspractice.store:27017/users", type =  "String" },
    { name = "roboshop.dev.rabbitmq.AMQP_USER", value =  "roboshop", type =  "String" },
    { name = "roboshop.dev.mysql.username", value =  "roboshop", type =  "String" },
    { name = "roboshop.dev.mysql.endpoint", value =  "mysql-dev.cluster-c3eyqiw0acbn.us-east-1.rds.amazonaws.com", type =  "String" },
    { name = "roboshop.dev.docdb.username", value =  "roboshop", type =  "String" },

    #passwords
    { name = "roboshop.dev.payment.AMQP_PASS", value =  "roboshop123", type =  "SecureString" },
    { name = "roboshop.dev.rabbitmq.AMQP_PASS", value =  "roboshop123", type =  "SecureString" },
    { name = "roboshop.dev.mysql.password", value =  "roboshop123", type =  "SecureString" },
    { name = "roboshop.dev.docdb.password", value =  "roboshop123", type =  "SecureString" },
    { name = "roboshop.dev.catalogue.MONGO_URL", value =  "mongodb://roboshop:roboshop123@docdb-dev-cluster.cluster-c3eyqiw0acbn.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type =  "SecureString" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value =  "docdb-dev-cluster.cluster-c3eyqiw0acbn.us-east-1.docdb.amazonaws.com", type =  "String" },
    { name = "roboshop.dev.user.MONGO_URL", value =  "mongodb://roboshop:roboshop123@docdb-dev-cluster.cluster-c3eyqiw0acbn.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type =  "SecureString" },
    { name = "roboshop.dev.user.docdb_endpoint", value =  "docdb-dev-cluster.cluster-c3eyqiw0acbn.us-east-1.docdb.amazonaws.com", type =  "String" },
  ]
}