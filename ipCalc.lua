local ipCalc = {}

function ipCalc.calculateAddressBetween(ip1, ip2)

	ipn1 = ipV4ToNumber(ip1)
	ipn2 = ipV4ToNumber(ip2)

	-- validation
	if ipn1 > ipn2 then
		print('ERROR. Second IP address should be larger than first.')
		os.exit() 
	end

	 return ipn2 - ipn1;
end

function ipV4ToNumber(ipV4String)

	-- split ip by .
	ipParts = splitStringBySeparator(ipV4String, ".");

	resultNumber = 0;

	for key,value in ipairs(ipParts) do
	    power = 3 - key+1;
	    resultNumber = resultNumber + value * 256^power
	end

	return math.floor(resultNumber)
end


function splitStringBySeparator (inputStr, separator)
    if separator == nil then
            separator = "%s"
    end

    local t={}

    for str in string.gmatch(inputStr, "([^"..separator.."]+)") do
            table.insert(t, str)
    end
    return t
end


return ipCalc