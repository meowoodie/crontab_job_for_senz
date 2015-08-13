curl -X POST -H "Content-Type: application/json; charset=utf-8" \
       -H "X-senz-Auth: 5548eb2ade57fc001b0000019c47999a5c3e4b7a4ebb283ea16f6d33" \
       -d '{"behaviorLen": 5400000, "step": 600000, "scale": "tenMinScale", "algoType": "GMMHMM", "tag": "new_train_sample_15_8_13"}'  http://api.trysenz.com/datasource/timeline/behaviorTimer

curl -X POST -H "Content-Type: application/json; charset=utf-8" \
       -H "X-senz-Auth: 5548eb2ade57fc001b0000019c47999a5c3e4b7a4ebb283ea16f6d33" \
       -d '{"behaviorLen": 900000, "step": 60000, "scale": "perMinScale", "algoType": "GMMHMM", "tag": "new_train_sample_15_8_13"}'  http://api.trysenz.com/datasource/timeline/behaviorTimer
