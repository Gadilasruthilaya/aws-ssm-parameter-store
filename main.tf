resource "aws_ssm_parameter" "params" {
  count = length(params)
  name = var.params[count.index].name
  value =var.params[count.index].value
  type = var.params[count.index].type

}

variable "params" {
  default = {
    { name="roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopspractice.store:8080/", type="string" },
    { name="roboshop.dev.frontend.user_url", value="http://user-dev.devopspractice.store:8080/", type="string" },
    { name="roboshop.dev.frontend.cart_url", value="http://cart-dev.devopspractice.store:8080/", type="string" },
    { name="roboshop.dev.frontend.shipping_url", value="http://shipping-dev.devopspractice.store:8080/", type="string" },
    { name="roboshop.dev.frontend.payment_url", value="http://payment-dev.devopspractice.store:8080/", type="string" },
    { name="roboshop.dev.cart.REDIS_HOST", value="redis-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.cart.CATALOGUE_HOST", value="catalogue-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.cart.CATALOGUE_PORT", value="8080", type="string" },
    { name="roboshop.dev.catalogue.MONGO", value="true", type="string" },
    { name="roboshop.dev.catalogue.MONGO_URL", value="mongodb://mongodb-dev.devopspractice.store:27017/catalogue", type="string" },
    { name="roboshop.dev.payment.CART_HOST", value="cart-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.payment.CART_PORT", value="8080", type="string" },
    { name="roboshop.dev.payment.USER_HOST", value="user-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.payment.USER_PORT", value="8080", type="string" },
    { name="roboshop.dev.payment.AMQP_HOST", value="rabbitmq-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.payment.AMQP_USER", value="roboshop", type="string" },
    { name="roboshop.dev.shipping.CART_ENDPOINT", value="cart-dev.devopspractice.store:8080", type="string" },
    { name="roboshop.dev.shipping.DB_HOST", value="mysql-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.user.MONGO", value="true", type="string" },
    { name="roboshop.dev.user.REDIS_HOST", value="redis-dev.devopspractice.store", type="string" },
    { name="roboshop.dev.user.MONGO_URL", value="mongodb://mongodb-dev.devopspractice.store:27017/users", type="string" },


    { name="roboshop.dev.payment.AMQP_PASS", value="roboshop123", type="string" },
  }
}