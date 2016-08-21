local json = require "cjson"

local function format_table(t)
	local str = ''
	for k,v in pairs(t) do
		str = str .. k .. '--' .. v .. '\r\n'
	end
	return str
end

--将json转换为字符串
local str_json = '{"key":"this is key","value":"this is value","num":1}'

local t = json.decode(str_json)

ngx.say(format_table(t))


--将lua table 转换为字符串

local t = {key='table key',value='table value',num=1}

local str_json = json.encode(t)

ngx.say(str_json)


-- 将lua talbe转换为json的数组

local t = {key={'list1','list2','list..'},num=1}

local str_json = json.encode(t)

ngx.say(str_json)


--json将lua的空talbe默认转换成json的空对象
local t = {}

local str_json = json.encode(t)

ngx.say(str_json)

