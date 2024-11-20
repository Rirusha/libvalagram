[
CCode(
	cheader_filename = "td/telegram/td_json_client.h",
	lower_case_cprefix = "td_" // Name translation (Eg: td_send -> send, td_receive -> receive)
)
]
namespace TDJsonApi {
	// TDJson API
	public static int create_client_id();
	public static void send(int client_id, string request);
	public static unowned string receive(double timeout);
	public static unowned string execute(string request);

	// TDLib log API
	[CCode (cheader_filename = "td/telegram/td_log.h", cname = "td_log_message_callback_ptr", has_target = false)]
	public delegate void log_message_callback_ptr(int verbosity_level, string message);
	[CCode (cheader_filename = "td/telegram/td_log.h")]
	void set_log_message_callback(int max_verbosity_level, log_message_callback_ptr callback);
}
