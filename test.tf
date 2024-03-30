# module "app_service" {

   
#     source                   = "app.terraform.io/wpp-cloudhub/wpp-wppit-lz-appservices-resources/azure//modules/appservice"  
# version                  = "0.0.1"  
# for_each                 = var.app_services  
#  location                 = each.key  
#   app_services             = each.value   
#   opgroup                  = var.opgroup 
#     subscription_id          = var.subscription_id   
#     landing_zone_environment = local.landing_zone_environment  
#      opco                     = var.opco  
#      }
      
# module "app_service_plan" {

   
#      source                   = "app.terraform.io/wpp-cloudhub/wpp-wppit-lz-appservices-resources/azure//modules/appserviceplan"
#  version                  = "0.0.3" 
#   for_each                 = var.app_service_plans  
#    location                 = each.key  
#     app_service_plans        = each.value  
#      opgroup                  = var.opgroup    
#       landing_zone_environment = local.landing_zone_environment 
#         opco                     = var.opco 
        
# }

# module "sql_server" {

 
#      source                   = "app.terraform.io/wpp-cloudhub/wpp-wppit-lz-sql-resources/azure//modules/mssql_server"
#   version                  = "0.0.2"   
#     for_each                 = var.mssql_servers  
#      location                 = each.key  
#       mssql_servers            = each.value 
#         opgroup                  = var.opgroup  
#          opco                     = var.opco  
#           landing_zone_environment = local.landing_zone_environment 
#             subscription_id          = var.subscription_id  
# }

# module "sql_database" {

 
#      source                   = "app.terraform.io/wpp-cloudhub/wpp-wppit-lz-sql-resources/azure//modules/mssql_database"
#   version                  = "0.0.2"   
#     for_each                 = var.mssql_databases
#      location                 = each.key  
#       mssql_servers            = each.value 
#         opgroup                  = var.opgroup  
#          opco                     = var.opco  
#           landing_zone_environment = local.landing_zone_environment 
#             subscription_id          = var.subscription_id  
# }