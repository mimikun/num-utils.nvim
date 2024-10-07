local converter = require("num-utils.converter")

describe("num-utils converter", function()
  it("converts decimal to hex", function()
    assert(converter.to_hex("10") == "0xA", "Expected 0xA, got " .. converter.to_hex("10"))
    assert(converter.to_hex("255") == "0xFF", "Expected 0xFF, got " .. converter.to_hex("255"))
    assert(converter.to_hex("65535") == "0xFFFF", "Expected 0xFFFF, got " .. converter.to_hex("65535"))
  end)

  it("converts decimal to binary", function()
    assert(converter.to_binary("10") == "0b1010", "Expected 0b1010, got " .. converter.to_binary("10"))
    assert(converter.to_binary("255") == "0b11111111", "Expected 0b11111111, got " .. converter.to_binary("255"))
    assert(converter.to_binary("1024") == "0b10000000000", "Expected 0b10000000000, got " .. converter.to_binary("1024"))
  end)

  it("converts decimal to octal", function()
    assert(converter.to_octal("10") == "0o12", "Expected 0o12, got " .. converter.to_octal("10"))
    assert(converter.to_octal("255") == "0o377", "Expected 0o377, got " .. converter.to_octal("255"))
    assert(converter.to_octal("1024") == "0o2000", "Expected 0o2000, got " .. converter.to_octal("1024"))
  end)

  it("converts hex to decimal", function()
    assert(converter.to_decimal("0xA") == 10, "Expected 10, got " .. converter.to_decimal("0xA"))
    assert(converter.to_decimal("0xFF") == 255, "Expected 255, got " .. converter.to_decimal("0xFF"))
    assert(converter.to_decimal("0xFFFF") == 65535, "Expected 65535, got " .. converter.to_decimal("0xFFFF"))
  end)

  it("converts binary to decimal", function()
    assert(converter.to_decimal("0b1010") == 10, "Expected 10, got " .. converter.to_decimal("0b1010"))
    assert(converter.to_decimal("0b11111111") == 255, "Expected 255, got " .. converter.to_decimal("0b11111111"))
    assert(converter.to_decimal("0b10000000000") == 1024, "Expected 1024, got " .. converter.to_decimal("0b10000000000"))
  end)

  it("converts octal to decimal", function()
    assert(converter.to_decimal("0o12") == 10, "Expected 10, got " .. converter.to_decimal("0o12"))
    assert(converter.to_decimal("0o377") == 255, "Expected 255, got " .. converter.to_decimal("0o377"))
    assert(converter.to_decimal("0o2000") == 1024, "Expected 1024, got " .. converter.to_decimal("0o2000"))
  end)

  it("handles edge cases", function()
    assert(converter.to_binary("0") == "0b0", "Expected 0b0, got " .. converter.to_binary("0"))
    assert(converter.to_hex("0") == "0x0", "Expected 0x0, got " .. converter.to_hex("0"))
    assert(converter.to_octal("0") == "0o0", "Expected 0o0, got " .. converter.to_octal("0"))
  end)
end)
