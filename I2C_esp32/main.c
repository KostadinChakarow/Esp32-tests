/*#######################INCLUDES################################*/
#include <stdio.h>
#include <>

/*#######################DEFINES################################*/
//define Master parametters
#define I2C_MASTER_SDA_IO
#define I2C_MASTER_SCL_IO
#define I2C_MASTER_FREQ_HZ
//define Slave parametters
#define I2C_SLAVE_SDA_IO
#define I2C_SLAVE_SCL_IO
#define ESP_SLAVE_ADDR



//Configuration of the I2C master 
int i2c_master_port = 0;
i2c_config_t conf_master = {
    .mode = I2C_MODE_MASTER,
    .sda_io_num = I2C_MASTER_SDA_IO,         // select GPIO specific to your project
    .sda_pullup_en = GPIO_PULLUP_ENABLE,
    .scl_io_num = I2C_MASTER_SCL_IO,         // select GPIO specific to your project
    .scl_pullup_en = GPIO_PULLUP_ENABLE,
    .master.clk_speed = I2C_MASTER_FREQ_HZ,  // select frequency specific to your project
    // .clk_flags = 0,          /*!< Optional, you can use I2C_SCLK_SRC_FLAG_* flags to choose i2c source clock here. */
};

//Configuration of the I2C slave
int i2c_slave_port = I2C_SLAVE_NUM;
i2c_config_t conf_slave = {
    .sda_io_num = I2C_SLAVE_SDA_IO,          // select GPIO specific to your project
    .sda_pullup_en = GPIO_PULLUP_ENABLE,
    .scl_io_num = I2C_SLAVE_SCL_IO,          // select GPIO specific to your project
    .scl_pullup_en = GPIO_PULLUP_ENABLE,
    .mode = I2C_MODE_SLAVE,
    .slave.addr_10bit_en = 0,
    .slave.slave_addr = ESP_SLAVE_ADDR,      // address of your project
};
/*  initialize the configuration for a given I2C port
    with call to "i2c_param_config()"   */
i2c_param_config(i2c_port_t i2c_num, const i2c_config_t *conf_master)
