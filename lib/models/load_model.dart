class LoadModel {
  String id;
  String fileName;

  LoadModel({this.id, this.fileName});

  LoadModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fileName = json['file_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pathFile'] = this.fileName;
    return data;
  }
}
