ipCalc = require("ipCalc")

local opType = arg[1]  -- Option, that determines ipV4 or ipV6 operation 
local ip1 = arg[2]     -- First IP
local ip2 = arg[3]     -- Second IP

if	opType == 'ipv4' then
	local res = ipCalc.calculateAddressBetween(ip1, ip2)
	print('Addreses between ip\'s: ', res)
elseif opType == 'ipv6' then
	print('ipv6 operation not yet implemented.')
	os.exit()
else
	print('ERROR. Unupported operation type.')
	os.exit()
end

