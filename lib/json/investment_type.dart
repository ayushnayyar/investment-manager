class InvestmentType {
  final String title;

  InvestmentType({required this.title});

  InvestmentType.fromJson(Map<String, dynamic> json) : title = json['title'] as String;

  Map<String, dynamic> toJson() => <String, dynamic>{'title': title};
}
