// The configured options and settings for SpeedTest
#define SpeedTest_VERSION_MAJOR 1
#define SpeedTest_VERSION_MINOR 14
#define SpeedTest_AUTHOR "Francesco Laurita <francesco.laurita@gmail.com>"
#define SpeedTest_HOME_PAGE "https://github.com/taganaka/SpeedTest"

#define SPEED_TEST_USER_AGENT "Mozilla/5.0 ${CMAKE_SYSTEM}; U; ${CMAKE_SYSTEM_PROCESSOR}; en-us (KHTML, like Gecko) SpeedTest++/${SpeedTest_VERSION_MAJOR}.${SpeedTest_VERSION_MINOR}"
#define SPEED_TEST_SERVERS_XML_URL "https://www.speedtest.net/speedtest-servers.php"
#define SPEED_TEST_SERVERS_JSON_URL "https://www.speedtest.net/api/js/servers"

#define SPEED_TEST_IP_INFO_API_URL "http://speedtest.ookla.com/api/ipaddress.php"
#define SPEED_TEST_API_URL "http://www.speedtest.net/api/api.php"
#define SPEED_TEST_API_REFERER "http://c.speedtest.net/flash/speedtest.swf"
#define SPEED_TEST_API_KEY "297aae72"
#define SPEED_TEST_MIN_SERVER_VERSION 2.3
#define SPEED_TEST_LATENCY_SAMPLE_SIZE 80
