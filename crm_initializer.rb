require "ZOHOCRMSDK2_0"

class Initialize
  def self.initialize()
    # Create an instance of Log::SDKLog Class that takes two parameters
    # 1 -> Level of the log messages to be logged. Can be configured by typing Levels "::" and choose any level from the list displayed.
    # 2 -> Absolute file path, where messages need to be logged.
    puts "tftfh"
    # log = SDKLog::Log.initialize(Levels::INFO, "/Users/user_name/Documents/rubysdk_log.log")
    puts "gvytvygv"
    #Create an UserSignature instance that takes user Email as parameter
    user_signature = UserSignature.new("abc@zohocorp.com")

    # Configure the environment
    # which is of the pattern Domain.Environment
    # Available Domains: USDataCenter, EUDataCenter, INDataCenter, CNDataCenter, AUDataCenter
    # Available Environments: PRODUCTION, DEVELOPER, SANDBOX

    environment = DC::INDataCenter.PRODUCTION

    #Create a Token instance
    #1 -> OAuth client id.
    #2 -> OAuth client secret.
    #3 -> REFRESH/GRANT token.
    #4 -> Token type(REFRESH/GRANT).
    #5 -> OAuth redirect URL.(optional)

    token = Authenticator::OAuthToken.new("1000.NXVDMNV06QFYH8D37PU3Z6TGFUSG5Q", "d82c641568f20b88a74a913b39d9ce1eae8a3f0832", "1000.98469e84c3ad8be5c1e9c2c602e327db.946f09f65371b29937659a8b4c37d3c5", TokenType::GRANT, "http://127.0.0.1:3000/")

    #Create an instance of TokenStore.
    #1 -> DataBase host name. Default "localhost"
    #2 -> DataBase name. Default "zohooauth"
    #3 -> DataBase user name. Default "root"
    #4 -> DataBase password. Default ""
    #5 -> DataBase port number. Default "3306"

    tokenstore = Store::DBStore.new("localhost", "zohoauth", "root", "", "3306")

    #tokenstore = Store::FileStore.new("/Users/user_name/Documents/ruby_sdk_token.txt")

    # auto_refresh_fields
    # if true - all the modules' fields will be auto-refreshed in the background, every    hour.
    # if false - the fields will not be auto-refreshed in the background. The user can manually delete the file(s) or refresh the fields using methods from ModuleFieldsHandler (Util::ModuleFieldsHandler)
    #
    # pickListValidation
    # if true - value for any picklist field will be validated with the available values.
    # if false - value for any picklist field will not be validated, resulting in creation of a new value.
    #
    # open_timeout
    # Number of seconds to wait for the connection to open (default 60 seconds)
    #
    # read_timeout
    # Number of seconds to wait for one block to be read (via one read(2) call) (default 60 seconds)
    #
    # write_timeout
    # Number of seconds to wait for one block to be written (via one write(2) call) (default 60 seconds)
    #
    # keep_alive_timeout
    # Seconds to reuse the connection of the previous request(default 2 seconds)
    #

    sdk_config = SDKConfig::Builder.new.auto_refresh_fields(false).pick_list_validation(true).open_timeout(60).read_timeout(60).write_timeout(60).keep_alive_timeout(2).build

    resource_path = "/Users/user_name/Documents/rubysdk-application"

    # Create an instance of RequestProxy class that takes the following parameters
    # 1 -> Host
    # 2 -> Port Number
    # 3 -> User Name
    # 4 -> Password

    request_proxy = RequestProxy.new("localhost", "5000", "root", "")

    # The initialize method of Initializer class that takes the following arguments
    # 1 -> UserSignature instance
    # 2 -> Environment instance
    # 3 -> Token instance
    # 4 -> TokenStore instance
    # 5 -> SDKConfig instance
    # 6 -> resourcePath -A String
    # 7 -> Log instance (optional)
    # 8 -> RequestProxy instance (optional)

    #The following is the initialize method

    Initializer.initialize(user, environment, token, store, sdk_config, resources_path, log, request_proxy)
  end
end

Initialize.initialize()

# ------------------------

# aaaserver.profile.READ
# grant-token =>  1000.f51641cd34a36829bbc8fb270b90018b.d799aff4bba6886208adc6b814491eb5

# access_token: 1000.023a9c374eaa686c61a8953157f45dcd.64c116839f8517d743520b445c87b2fc
              # 1000.023a9c374eaa686c61a8953157f45dcd.64c116839f8517d743520b445c87b2fc
# refresh_token: 1000.b6465bcba82fbe0e517f79b58114db8a.82bb85b4cc57d65dd81e270c8e315f80
# "token_type": "Bearer",
# "expires_in": 3600

# "portal_owner"
# from line no.-271 new portal
# aaaserver.profile.READ,ZohoProjects.portals.ALL,ZohoProjects.projects.ALL,ZohoProjects.users.ALL,ZohoProjects.tasklists.ALL,ZohoProjects.tasks.ALL,ZohoProjects.timesheets.ALL


# test_skill portal_id: 788396779
# simform portal_id: 36485097

# prac_skill_client_id : 1000.R1N5FCOZIYJN6BQO4L11UR2I78POIB
# prac_skill_client_secret : 3cce770276013f51aac211df6baf72ae137fcb9e5b
