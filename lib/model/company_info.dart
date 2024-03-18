class CompanyInfo{
  String logoUrl;
  String company;
  String titel;
  String location;
  String fullTime;
  List<String> req;

  CompanyInfo(this.logoUrl,this.company,this.titel,this.location,this.fullTime,this.req);
  static List<CompanyInfo> generatedCompanyList(){
    return [
      CompanyInfo("images/d1.jpg", "Google", "Product Design", "417 Marian Plaza,Texas,\n      United States", "FullTime",
       [
        'Creative with an Eye for shape and color',
       "Understand Different Material and production Method",
       'Creative with an Eye for shape and color',
       "Understand Different Material and production Method"
       ]),
     CompanyInfo("images/d1.jpg", "Google", "Product Design", "417 Marian Plaza,Texas,\nUnited States", "FullTime",
       [
        'Creative with an Eye for shape and color',
       "Understand Different Material and production Method",
       'Creative with an Eye for shape and color',
       "Understand Different Material and production Method"
       ]),
      CompanyInfo("images/d1.jpg", "Google", "Product Design", "417 Marian Plaza,Texas,\nUnited States", "FullTime",
       [
        'Creative with an Eye for shape and color',
       "Understand Different Material and production Method",
       'Creative with an Eye for shape and color',
       "Understand Different Material and production Method"
       ]),
    ];
  }
}