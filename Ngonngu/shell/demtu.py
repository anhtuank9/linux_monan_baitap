chuoi = input("Nhap chuoi: ")

ds_tu = chuoi.split()

print("So tu trong chuoi la:", len(ds_tu))

print("Cac tu dai hon 5 ky tu:")

co_tu = False

for tu in ds_tu:
    tu_sach = tu.strip(".,;:!?()[]{}\"'")
    if len(tu_sach) > 5:
        print(tu_sach)
        co_tu = True

if not co_tu:
    print("Khong co tu nao dai hon 5 ky tu")
