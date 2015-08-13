curl -X POST -H "Content-Type: application/json; charset=utf-8" \
	-H "X-senz-Auth: 5548eb2ade57fc001b0000018f8b08f5a0ea4120775a41f8396783d2" \
	-d '{"configs":[{"period":30,"collector":{"sensor":{"isActive":true},"location":{"isActive":true},"sound":{"isActive":false},"calendar":{"isActive":true}},"uploader":{"sensor":{"isActive":true,"strategy":"network"},"location":{"isActive":true,"strategy":"network"},"sound":{"isActive":false,"strategy":"wifi"},"calendar":{"isActive":true,"strategy":"wifi"}}}]}' \
	http://api.trysenz.com/sdk/notification/notify_all_user_same_config
