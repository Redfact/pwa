require 'webpush'
class Pushnotification
    attr_accessor :endpoint,:p256,:auth
    def initialize()
        @endpoint = "https://fcm.googleapis.com/fcm/send/erhVCvt0ANA:APA91bH-zQWX0T2Ty7Rlq5qN29cM0Fs7Om8b0AVvCv92oHckKJ6TyWvePyASRlNzzDDDrvmD3kXDgAAa_1zPNuc8iYB6pu81-qNQZa18uJOQfTzVMEb4Q9IYuAdbPsxGig1_WsTxMkUy"
        @p256 = "BKUPKUN0QSqtIhYad0mnYwALSI-ydvoPRX6fBKWYAkljZ5LIhZdRGzRG8jc7X2bre-axbB1WOcuOh_hHYN896xw"
        @auth = "iiXnIaQRqXhbWbMomQ5j8Q"
    end
    
    def send_notification(subject)
        Webpush.payload_send(
            message: 'Hello from ruby',
            endpoint: @endpoint,
            p256dh: @p256,
            auth: @auth,
            vapid: {
                subject: subject,
                public_key: "BL4TDcrb3digNqMDfAZBfDXw03m9zsy2JFTviPrsei1y3rz22-XxwNlcoOTqdfJXOv_kD4qzM3fw7Ux_HDiCAIU=",
                private_key: "pXmRkBXKtp83MjRg9kwMEhkQELCq35M2MTEmFL1dRdU="
            }
        )
    end
end
