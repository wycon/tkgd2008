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