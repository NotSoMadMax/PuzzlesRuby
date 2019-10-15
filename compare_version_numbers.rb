# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split(".")
    v2 = version2.split(".")

    result = 0
    until v1.size == 0 && v2.size == 0
        if v1.size == 0
            result = compare("", v2.shift)
        elsif v2.size == 0
            result = compare(v1.shift, "")
        else
            result = compare(v1.shift, v2.shift)
        end
        break if result != 0
    end
    result
end

def compare(num1, num2)
    n1 = num1.gsub(/^[0]+/, '')
    n2 = num2.gsub(/^[0]+/, '')
    return 0 if n2.size == 0 && n1.size == 0
    return 1 if n2.size == 0
    return -1 if n1.size == 0

    if n1.to_i > n2.to_i
        return 1
    elsif n1.to_i < n2.to_i
        return -1
    else
        return 0
    end
end

puts compare_version("1.1.1.0", "1.2.1")
