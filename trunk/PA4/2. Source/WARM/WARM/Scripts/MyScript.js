function mouseOver(id) {
    document.getElementById("img").src = document.getElementById(id).src
}
function onChange() {
    //document.getElementById("maTinhTrang").valueOf() = document.getElementById("maTinhTrangGioHang").valueOf()
}
function onClick(id) {
    var e = document.getElementById("maTinhTrangGioHang" + id);
    var maTinhTrang = e.options[e.selectedIndex].value;
    frmManageOrder.elements["oderID"].value = id;
    frmManageOrder.elements["stateID"].value = maTinhTrang;
    document.forms["frmManageOrder"].submit();
    //alert(id + "   " + maTinhTrang)
}
function DatMon(ma, ten, gia) {
    var e = document.getElementById("phieudatmon");
    var monan = document.createElement('a');
    //monan.setAttribute("id", "DDtemp");
    monan.setAttribute("href", "ChiTietMonAn.aspx?id=" + ma.toString());
    monan.setAttribute("name", "myanchor");
    var _text = document.createTextNode(ten);
    monan.appendChild(_text);
    monan.appendChild(document.createElement('br'));    
    e.appendChild(monan);
}
//function SapTenTang() {
//    
//}
//function SapTenGiam() {

//}
//function SapGiaTang() {

//}
//function SapGiaGiam() {

//}