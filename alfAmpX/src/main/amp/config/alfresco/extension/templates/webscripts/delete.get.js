var path = args.dir;         // "UploadedDoc";

var fileName = args.fileName;           //"logo-enterprise.png";

var filePath = path + "/" + fileName ;      // "DocTypes/MAG/path.txt"


var dir = companyhome.childByNamePath(path);
var node = companyhome.childByNamePath(filePath);

// delete child from parent

dir.removeNode(node);