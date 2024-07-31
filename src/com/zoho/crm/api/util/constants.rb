# frozen_string_literal: true

module ZOHOCRMSDK
  # This class uses the SDK constants name reference.
  class Constants
    API_NAME = 'api_name'

    USER_NAME = "user_name"

    ROLLUP_SUMMARY = "rollup_summary"

    FIELD_DETAILS_DIRECTORY = "resources"

    RESPONSECODE_OK = 200

    PARSE_RESPONSE = "Exception in parsing token response"

    REFRESH_TOKEN_REMOVED = " Refresh token revoked successfully."

    FILE_ERROR = 'FILE ERROR'

    TOKEN_NOT_FOUND = " No tokens exist for the given user-id."

    FILE_DOES_NOT_EXISTS = 'file does not exists'

    JSON_FILE_EXTENSION = '.json'

    RESPONSECODE_CREATED = 201

    RESPONSECODE_ACCEPTED = 202

    RESPONSECODE_NO_CONTENT = 204

    RESPONSECODE_MOVED_PERMANENTLY = 301

    RESPONSECODE_MOVED_TEMPORARILY = 302

    RESPONSECODE_NOT_MODIFIED = 304

    RESPONSECODE_BAD_REQUEST = 400

    JSON_DETAILS_ERROR = "ERROR IN READING JSONDETAILS FILE"

    REVOKE_TOKEN_ERROR = "Exception while revoke the refresh token."

    REVOKE_URL = "/revoke"

    RESPONSECODE_AUTHORIZATION_ERROR = 401

    RESPONSECODE_FORBIDDEN = 403

    RESPONSECODE_NOT_FOUND = 404

    RESPONSECODE_METHOD_NOT_ALLOWED = 405

    RESPONSECODE_REQUEST_ENTITY_TOO_LARGE = 413

    RESPONSECODE_UNSUPPORTED_MEDIA_TYPE = 415

    RESPONSECODE_TOO_MANY_REQUEST = 429

    RESPONSECODE_INTERNAL_SERVER_ERROR = 500

    RESPONSECODE_INVALID_INPUT = 0

    REQUEST_METHOD_GET = 'GET'

    REQUEST_METHOD_POST = 'POST'

    REQUEST_METHOD_PUT = 'PUT'

    REQUEST_METHOD_DELETE = 'DELETE'

    REQUEST_METHOD_PATCH = 'PATCH'

    GRANT_TYPE = 'grant_type'

    GRANT_TYPE_AUTH_CODE = 'authorization_code'

    ACCESS_TOKEN = 'access_token'

    EXPIRES_IN = 'expires_in'

    HREF = 'href'

    EXPIRES_IN_SEC = 'expires_in_sec'

    REFRESH_TOKEN = 'refresh_token'

    CLIENT_ID = 'client_id'

    CLIENT_SECRET = 'client_secret'

    REDIRECT_URI = 'redirect_uri'

    REDIRECT_URL = 'redirect_url'

    URL = 'URL'

    HEADERS = 'headers'

    PARAMS = 'PARAMS'

    OAUTH_HEADER_PREFIX = 'Zoho-oauthtoken '

    AUTHORIZATION = 'Authorization'

    CODE = 'code'

    STATUS = 'status'

    MESSAGE = 'message'

    HTTP = 'http'

    INVENTORY_MODULES_ITEMS = ["invoiced_items", "quoted_items","purchase_items","ordered_items"]

    PRODUCT_NAME = "Product_Name"

    DEFAULT_MODULENAME_VS_APINAME = {

      "leads" => "Leads",

      "contacts" => "Contacts",

      "accounts" => "Accounts",

      "deals" => "Deals",

      "tasks" => "Tasks",

      "events" => "Events",

      "activities" => "Activities",

      "calls" => "Calls",

      "products" => "Products",

      "quotes" => "Quotes",

      "sales_orders" => "Sales_Orders",

      "purchase_orders" => "Purchase_Orders",

      "invoices" => "Invoices",

      "campaigns" => "Campaigns",

      "vendors" => "Vendors",

      "price_books" => "Price_Books",

      "cases" => "Cases",

      "solutions" => "Solutions",

      "visits" => "Visits",

      "approvals" => "Approvals",

      "notes" => "Notes",

      "attachments" => "Attachments",

      "actions_performed" => "Actions_Performed",

  }

    USER_AGENT = "Mozilla/5.0"
    
    USER_AGENT_KEY = "user-agent"

    CONTENT_API_URL = 'content.zohoapis.com'

    INVALID_URL_ERROR = 'Invalid URI Error'

    ZOHO_SDK = 'X-ZOHO-SDK'

    SDK_VERSION = '1.0.0'

    SET_CONTENT_TYPE_HEADER = ['/crm/bulk/v7/read', '/crm/bulk/v7/write']

    RESOURCE_PATH_INVALID_ERROR_MESSAGE = "Resource Path MUST be a valid directory."

    IS_GENERATE_REQUEST_BODY =[REQUEST_METHOD_POST,REQUEST_METHOD_PUT,REQUEST_METHOD_PATCH]

    REQUIRED_IN_UPDATE = 'required-in-update'

    PHOTO = "photo"
      
    CRM = "crm"
    
    API_VERSION = "v7"

    PHOTO_SUPPORTED_MODULES = ["leads", "contacts", "accounts", "products", "vendors"]

    PARAMETER_NULL_ERROR = 'NULL PARAMETER ERROR'

    HEADER_NULL_ERROR = 'NULL HEADER ERROR'

    PARAM_NAME_NULL_ERROR = 'NULL PARAM NAME ERROR'

    HEADER_NAME_NULL_ERROR = 'NULL HEADER NAME ERROR'

    PARAM_NAME_NULL_ERROR_MESSAGE = 'Param Name MUST NOT be null'

    AUTO_REFRESH_FIELDS_ERROR_MESSAGE = 'autoRefreshFields MUST NOT be null.'

    RESOURCE_PATH_ERROR_MESSAGE = 'Resource Path MUST NOT be null/empty.'

    HEADER_NAME_NULL_ERROR_MESSAGE = 'Header Name MUST NOT be null'

    NULL_VALUE = 'null'

    HEADER_OR_PARAM_NAME = 'HEADER OR PARAM'

    UNSUPPORTED_IN_API = 'API UNSUPPORTED OPERATION'

    UNSUPPORTED_IN_API_MESSAGE = 'Operation is not supported by API'

    NULL_VALUE_ERROR_MESSAGE = ' MUST NOT be null'

    PARAM_INSTANCE_NULL_ERROR = 'Param Instance MUST NOT be null'

    HEADER_INSTANCE_NULL_ERROR = 'Header Instance MUST NOT be null'

    SDK_UNINITIALIZATION_ERROR = 'SDK UNINITIALIZED ERROR'

    SDK_UNINITIALIZATION_MESSAGE = 'SDK is uninitialized'

    MYSQL_HOST = 'localhost'

    LINEITEM_PRODUCT = "com.zoho.crm.api.record.LineItemProduct"

    REFRESH_TOKEN_MESSAGE = 'Access Token has expired. Hence refreshing.'

    REFRESH_TOKEN_ERROR = "Exception in refreshing the Access token :"

    ACCESS_TOKEN_ERROR = "Exception in generating the Access token :"

    MYSQL_DATABASE_NAME = 'zohooauth'

    MYSQL_USER_NAME = 'root'

    MYSQL_PORT_NUMBER = '3306'

    UNDERSCORE = '_'

    RELATED_LISTS = 'Related_Lists'

    USER_MAIL = 'user_mail'

    EXPIRY_TIME = 'expiry_time'

    PROXY_SETTINGS = "Proxy settings - "
    
    PROXY_HOST = "Host: "
    
    PROXY_PORT = "Port: "
    
    PROXY_USER = "User: "
    
    PROXY_DOMAIN = "Domain: "

    USER_MAIL_NULL_ERROR = 'USER MAIL NULL ERROR'

    USER_MAIL_NULL_ERROR_MESSAGE = 'User Mail MUST NOT be null. Use setUserMail() to set value.'

    SAVE_TOKEN_ERROR = 'Exception in saving tokens'

    GENERATE_TOKEN_ID_ERROR = "Exception in generateId() - DBStore"

    GET_TOKEN_DB_ERROR1 = "Exception in DBStore : Given user authentication details not found."

    GET_TOKEN_ERROR = 'Exception in getting access token'

    GET_TOKEN_BY_USER_NAME_ERROR = "Exception in getToken() - OAuthToken : Given user_name token details not found, Please give required item";

    GET_TOKEN_DB_ERROR = 'Exception in get_token - DBStore:'

    GET_TOKEN_BY_ID_DB_ERROR = "Exception in getTokenById - DBStore : Given ID is invalid"

    GET_TOKEN_BY_ID_FILE_ERROR = "Exception in getTokenById - FileStore : Given ID is invalid"

    GET_TOKENS_DB_ERROR = 'Exception in get_tokens - DBStore:'

    DELETE_TOKEN_DB_ERROR = 'Exception in delete_token - DBStore:'

    DELETE_TOKENS_DB_ERROR = 'Exception in delete_tokens - DBStore:'

    SAVE_TOKEN_DB_ERROR = 'Exception in save_token - DBStore:'

    GET_TOKEN_FILE_ERROR = 'Exception in get_token - FileStore:'

    LOGGER_INITIALIZATION_ERROR = "Exception in Logger Initialization : "

    REFRESH_SINGLE_MODULE_FIELDS_ERROR = 'Exception in refreshing fields of module : '

    REFRESH_ALL_MODULE_FIELDS_ERROR = 'Exception in refreshing fields of all modules : '

    GET_TOKENS_FILE_ERROR = "Exception in getTokens - FileStore : "

    FILEBODYWRAPPER = 'FileBodyWrapper'

    ACCOUNTS = 'Accounts'

    FORMULA = 'formula'

    CALLS = 'Calls'

    SKIP_MANDATORY = 'skip-mandatory'

    CALL_DURATION = 'Call_Duration'

    EXCEPTION = 'exception'

    SAVE_TOKEN_FILE_ERROR = 'Exception in save_token - FileStore:'

    SAVE_TOKENS_FILE_ERROR = 'Exception in save_tokens - FileStore:'

    DELETE_TOKEN_FILE_ERROR = 'Exception in delete_token - FileStore:'

    DELETE_TOKENS_FILE_ERROR = 'Exception in delete_tokens - FileStore:'

    DELETE_MODULE_FROM_FIELDFILE_ERROR = 'Exception in deleting module from Fields file'

    DELETE_FIELD_FILE_ERROR = 'Exception in deleting Current User Fields file'

    DELETE_FIELD_FILES_ERROR = 'Exception in deleting all Fields files'

    FIELDS_LAST_MODIFIED_TIME = 'FIELDS-LAST-MODIFIED-TIME'

    MODULES_TO_SKIP = ['Activities']

    ACTIVITIES = 'Activities'

    GIVEN_VALUE = "given-value"

    MULTI_SELECT_LOOKUP = "multiselectlookup"

    MULTI_USER_LOOKUP = "multiuserlookup"

    MULTI_MODULE_LOOKUP = "multi_module_lookup"

    TERRITORIES = "territories"

    GENERATED_TYPE = "generated_type"

    GENERATED_TYPE_CUSTOM = "custom"

    UPLOAD_PHOTO_UNSUPPORTED_MESSAGE = "Photo Upload Operation is not supported by the module: "

    SDK_MODULE_METADATA = "SDK-MODULE-METADATA"

    INVALID_MODULE_API_NAME_ERROR = "INVALID MODULE API NAME ERROR"

    PROVIDE_VALID_MODULE_API_NAME = "PROVIDE VALID MODULE API NAME: "

    UPLOAD_PHOTO_UNSUPPORTED_ERROR = "UPLOAD PHOTO UNSUPPORTED MODULE"
      
    INVALID_MODULE  = "INVALID_MODULE"

    INVENTORY_MODULES = %w[invoices sales_orders purchase_orders quotes]

    KEYS_TO_SKIP = %w[Created_Time Modified_Time Created_By Modified_By Tag]

    ATTACHMENT_ID = 'attachment_id'

    FILE_ID = 'file_id'

    TOKEN_STORE = 'TOKEN_STORE'

    GET_TOKEN_FILE_ERROR1 = "Exception in FileStore : Given user authentication details not found."

    GRANT_TOKEN = 'grant_token'

    INPUT_ERROR = 'INPUT_ERROR'

    TOKEN = 'token'

    TYPE = 'type'

    ID = 'id'

    SUCCESS = "success"

    REQUEST_CATEGORY_READ = 'READ'

    REQUEST_CATEGORY_CREATE = 'CREATE'

    REQUEST_CATEGORY_UPDATE = 'UPDATE'

    MODULEPACKAGENAME = 'modulePackageName'
    
    MYSQL_TABLE_NAME = "oauthtoken"

    INITIALIZATION_SUCCESSFUL = 'Initialization successful '

    EXCEPTION_JSONDETAILS = 'Exception in loading JSONDetails :'

    INITIALIZATION_SWITCHED = 'Initialization switched '

    API_EXCEPTION = 'API_EXCEPTION'

    SET_API_URL_EXCEPTION = 'Exception in setting API URL : '

    AUTHENTICATION_EXCEPTION = 'Exception in authenticating current request : '

    FORM_REQUEST_EXCEPTION = 'Exception in forming request body :'

    API_CALL_EXCEPTION = 'Exception in current API call execution : '

    EXCEPTION_IS_KEY_MODIFIED = 'Exception in calling isKeyModified : '

    GIVEN_LENGTH = 'given-length'

    FOR_EMAIL_ID = 'for Email Id : '

    IN_ENVIRONMENT = ' in Environment : '

    MODULEDETAILS = 'moduleDetails'

    EXPECTED_TOKEN_TYPES = 'REFRESH, GRANT'

    ARRAY = 'Array'

    HASH = 'Hash'

    CASES = 'cases'

    DISCOUNT = "DISCOUNT"

    CANT_DISCLOSE = " ## can't disclose ## "

    APPLICATION_FORM_URLENCODED = 'application/x-www-form-urlencoded'

    MULTIPART_FORM_DATA = 'multipart/form-data'

    INVALID_CLIENT_ERROR = 'INVALID CLIENT ERROR'

    ERROR_KEY = 'error'

    ERROR_HASH_FIELD = 'field'

    ERROR_HASH_EXPECTED_TYPE = 'expected_type'

    ERROR_HASH_CLASS = 'class'

    CONTENT_TYPE = 'content-type'

    CONTENT_TYPE_1 = 'Content-Type'

    CONTENT_TYPE_2 = 'Content-Type'

    INSTANCE_NUMBER = 'instance-number'

    ERROR_HASH_MEMBER = 'member'

    NAME = 'name'

    DATA_TYPE = { 'Map' => 'Hash','String'=>'String' ,'List' => 'Array', 'Boolean' => 'boolean', 'Integer' => 'Integer', 'Long' => 'Integer', 'Hash' => 'Hash', 'HashMap' => 'Hash', 'Double' => 'Float','Float' => 'Float','DateTime'=>'DateTime','Date'=>'Date' }

    PRIMITIVE_TYPES = ['String', 'Boolean', 'Integer', 'Float', 'TrueClass', 'FalseClass', 'DateTime', 'Date']

    BOOLEAN_CLASSES = ['TrueClass', 'FalseClass']

    DATA_TYPE_ERROR = 'DATA TYPE ERROR'

    TYPE_ERROR = 'type-error'

    USER_SIGNATURE_ERROR = 'USERSIGNATURE ERROR'

    USER_EMAIL_REGEX_ERROR = 'UserSignature Email Regex Mismatch'

    VALUES = 'values'

    ACCEPTED_VALUES = 'accepted-values'

    UNACCEPTED_VALUES_ERROR = 'UNACCEPTED VALUES ERROR'

    MIN_LENGTH = 'min-length'

    MAX_LENGTH = 'max-length'

    ERROR_HASH_MAXIMUM_LENGTH = 'maximum-length'

    MAXIMUM_LENGTH_ERROR = 'MAXIMUM LENGTH ERROR'

    ERROR_HASH_MINIMUM_LENGTH = 'minimum-length'

    MINIMUM_LENGTH_ERROR = 'MINIMUM LENGTH ERROR'

    REGEX = 'regex'

    REGEX_MISMATCH_ERROR = 'REGEX MISMATCH ERROR'

    UNIQUE = 'unique'

    UNIQUE_KEY_ERROR = 'UNIQUE KEY ERROR'

    FIRST_INDEX = 'first-index'

    NEXT_INDEX = 'next-index'

    INDEX = 'index'

    GIVEN_TYPE = 'given-type'

    INTEGER = 'Integer'

    LONG = 'Long'

    DOUBLE = 'Double'

    FLOAT = 'Float'

    BOOLEAN = 'Boolean'

    OBJECT = 'Object'

    STRING = 'String'

    DATE_NAMESPACE = 'Date'

    DATETIME_NAMESPACE = 'DateTime'

    FILE_NAMESPACE = 'com.zoho.crm.api.util.StreamWrapper'

    DOUBLE_COLON = '::'

    DOT = '.'

    AT = '@'

    RESOURCES = 'resources'

    PRIMARY = 'primary'

    STREAM_WRAPPER_CLASS_PATH = 'com.zoho.crm.api.util.StreamWrapper'

    CONTENT_DISPOSITION = 'content-disposition'

    PACKAGE_PREFIX = 'com.zoho.crm.api.'

    INTERFACE = 'interface'

    CLASSES = 'classes'

    READ_ONLY = 'read-only'

    PRODUCT_DETAILS = 'Product_Details'

    PRICING_DETAILS = 'Pricing_Details'

    COMMENTS = 'Comments'

    COMMENTS_NAMESPACE = 'com.zoho.crm.api.record.Comment'

    SOLUTIONS = 'solutions'

    IS_KEY_MODIFIED = 'is_key_modified'

    LOG_FILE_NAME = 'sdk_logs.log'

    TOKEN_FILE = "sdk_tokens.txt"

    SUBFORM = 'subform'

    LOOKUP = 'lookup'

    REQUIRED = 'required'

    PRIMARY_KEY_ERROR = 'Value missing or Nil for required key(s) : '

    MANDATORY_KEY_ERROR = 'missing or Nil Value for mandatory key : '

    MANDATORY_VALUE_ERROR = 'MANDATORY VALUE MISSING OR NIL ERROR'

    LIST_NAMESPACE = 'List'

    PRICE_BOOKS = 'Price_Books'

    LINE_TAX = '$line_tax'

    RECURRING_ACTIVITY_NAMESPACE = 'com.zoho.crm.api.record.RecurringActivity'

    REMINDER_NAMESPACE = 'com.zoho.crm.api.record.Reminder'

    REMINDAT_NAMESPACE = 'com.zoho.crm.api.record.RemindAt'

    FIELD_FILE_NAMESPACE = 'com.zoho.crm.api.record.FileDetails'

    INVENTORY_LINE_ITEMS = 'com.zoho.crm.api.record.InventoryLineItems'

    PARTICIPANT_API_NAME = 'Participants'

    PRICINGDETAILS = 'com.zoho.crm.api.record.PricingDetails'

    PARTICIPANTS = 'com.zoho.crm.api.record.Participants'

    LINE_TAX_NAMESPACE = 'com.zoho.crm.api.record.LineTax'

    LAYOUT = 'Layout'

    LAYOUT_NAMESPACE = 'com.zoho.crm.api.layouts.Layouts'

    EVENTS = 'Events'

    MAP_NAMESPACE = 'Map'

    HASH_MAP_NAMESPACE = 'HashMap'

    STRUCTURE_NAME = 'structure_name'

    KEYS = 'keys'

    RECORD_NAMESPACE = 'com.zoho.crm.api.record.Record'

    USER_NAMESPACE = 'com.zoho.crm.api.users.Users'

    MODULE_NAMESPACE = 'com.zoho.crm.api.modules.Modules'

    CHOICE_NAMESPACE = 'com.zoho.crm.api.util.Choice'

    JSON_DETAILS_FILE_PATH = 'resources/json_details.json'

    DETAILS = 'details'

    KEY_VALUES = 'key_values'

    KEY_MODIFIED = 'key_modified'

    LOGFILE_NAME = 'SDKLogs.log'

    INITIALIZATION_ERROR = 'INITIALIZATION ERROR'

    REQUEST_PROXY_ERROR = 'REQUEST PROXY ERROR'

    HOST_ERROR_MESSAGE = 'Host MUST NOT be null.'

    PORT_ERROR_MESSAGE = 'Port MUST NOT be null.'

    REQUEST_PROXY_ERROR_MESSAGE = "request_proxy must be instance of Request Proxy"
    
    USER_SIGNATURE_ERROR_MESSAGE = "user must be instance of UserSignature."
    
    ENVIRONMENT_ERROR_MESSAGE = "environment must be instance of Environment."
    
    SDK_CONFIG_ERROR_MESSAGE = "sdk_config must be instance of sdkConfig."

    TOKEN_ERROR_MESSAGE = "token must be instance of Token."
    
    STORE_ERROR_MESSAGE = "store must be instance of Store."

    INITIALIZATION_EXCEPTION = 'Exception in initialization'

    SWITCH_USER_EXCEPTION = 'Exception in Switch user'
    
    SWITCH_USER_ERROR = "SWITCH USER ERROR"

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    EMAIL = 'email'

    SE_MODULE = 'se_module'

    USER_ERROR = 'USER ERROR'

    MODULES = 'modules'

    MODULE = 'module'

    DELETE = 'delete'

    NOTES = 'Notes'

    CONSENT_LOOKUP = "consent_lookup"

    ATTACHMENTS = '$attachments'

    TERRITORY_NAMESPACE = 'com.zoho.crm.api.record.Territory'

    IMAGEUPLOAD_NAMESPACE = 'com.zoho.crm.api.record.ImageUpload'

    ATTACHMENTS_NAMESPACE = 'com.zoho.crm.api.attachments.Attachment'

    PICKLIST = 'picklist'

    CONSENT_NAMESPACE = 'com.zoho.crm.api.record.Consent'

    INVALID_TOKEN_ERROR = "INVALID TOKEN ERROR"

    NO_ACCESS_TOKEN_ERROR = "ACCESS TOKEN IS NOT PRESENT IN RESPONSE"

    CLIENT_ID_NULL_ERROR_MESSAGE = "ClientID MUST NOT be null"

    CLIENT_SECRET_NULL_ERROR_MESSAGE = "ClientSecret MUST NOT be null"

    TAX_NAMESPACE = "com.zoho.crm.api.record.Tax"

    PRODUCTS = "Products"

    TAX = "TAX"

    TERRITORY = "Territory"

    SKIP_MODULES = ['deals']

    RUBY = "ruby_"

    OAUTH_MANDATORY_KEYS = ["grant_token", "refresh_token", "id", "access_token"]

    OAUTH_MANDATORY_KEYS2 = [Constants::GRANT_TOKEN, Constants::REFRESH_TOKEN]

    OAUTH_TOKEN_FIELDS = ["client_id", "client_secret", "redirect_url", "grant_token", "refresh_token", "access_token", "expires_in", "user_signature", "id", "api_domain", "find_user"]

    OWNER_LOOKUP = "ownerlookup"

    ENVIRONMENT_ERROR_1 = "ENVIRONMENT_ERROR"

    ENVIRONMENT_ERROR = "The given DataCenter config not valid. Please check the domain URL"

    ENVIRONMENT_ERROR_RESPONSE = "Exception in set the api environment."

    ENVIRONMENT = "environment"

    API_DOMAIN = "api_domain"

    DEVELOPER = "developer"

    SANDBOX = "sandbox"

    DATACENTER_ERROR = "DATACENTER_ERROR"

    AU_DATACENTER = ["https://www.zohoapis.com.au", "https://sandbox.zohoapis.com.au", "https://developer.zohoapis.com.au", "https://accounts.zoho.com.au/oauth/v2/token","au"]

    CN_DATACENTER = ["https://www.zohoapis.com.cn", "https://sandbox.zohoapis.com.cn", "https://developer.zohoapis.com.cn", "https://accounts.zoho.com.cn/oauth/v2/token","cn"]

    EU_DATACENTER = ["https://www.zohoapis.eu", "https://sandbox.zohoapis.eu", "https://developer.zohoapis.eu", "https://accounts.zoho.eu/oauth/v2/token","eu"]

    IN_DATACENTER = ["https://www.zohoapis.in", "https://sandbox.zohoapis.in", "https://developer.zohoapis.in", "https://accounts.zoho.in/oauth/v2/token","in"]

    JP_DATACENTER = ["https://www.zohoapis.jp", "https://sandbox.zohoapis.jp", "https://developer.zohoapis.jp", "https://accounts.zoho.jp/oauth/v2/token","jp"]

    US_DATACENTER = ["https://www.zohoapis.com", "https://sandbox.zohoapis.com", "https://developer.zohoapis.com", "https://accounts.zoho.com/oauth/v2/token","us"]
    CA_DATACENTER = ["https://www.zohoapis.ca", "https://sandbox.zohoapis.ca", "https://developer.zohoapis.ca", "https://accounts.zoho.ca/oauth/v2/token","ca"]
    ACCESS_TOKEN_USING_REFRESH_TOKEN_MESSAGE = "Access token can be generated by refresh token"
    ACCESS_TOKEN_USING_GRANT_TOKEN_MESSAGE = "Access token can be generated by grant token."
    COUNT = "count"
    CURRENTUSER = "CurrentUser"
    TIME_RANGE_NAMESPACE = "com.zoho.crm.api.record.TimeRange"
    SUB_TYPE = "sub_type"
    PARAM_EXCEPTION = "Exception in forming request Parameter : "
    HEADER_EXCEPTION = "Exception in forming request Header : "
  end
end
