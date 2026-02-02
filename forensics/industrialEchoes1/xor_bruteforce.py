# XOR bruteforce

def xor_decrypt(data, key):
    return "".join(chr(b ^ key) for b in data)

payload = ".....5..2JhhhhhhhhhhYBQhD^hYX^CTVECORhVCVShDBUSXZL..qctt~y............."
data = payload.encode()
for key in range(256):
    decoded = xor_decrypt(data, key)
    
    if "NICCTF" in decoded or "FTCCIN" in decoded:
        print(f'{key}: {decoded}')
