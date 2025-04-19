class DocumentListModel {
  final String categoryName;
  final String incomeCertificate;
  final List<String> criteria;
  final List<String> documents;
  const DocumentListModel({
    required this.categoryName,
    required this.incomeCertificate,
    required this.criteria,
    required this.documents,
  });
}
