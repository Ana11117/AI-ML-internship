def calc_rectangle(lengh,width):
    area=length*width
    perimeter=2*(lengh+width)
    return area,perimeter
length=float(input("enter length:"))
width=float(input("enter width:"))
area,perimeter=calc_rectangle(length,width)
print(f"Area:{area},Perimeter:{perimeter}")
