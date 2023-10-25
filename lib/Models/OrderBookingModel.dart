/// items : [{"empno":7839,"ename":"KING","job":"PRESIDENT","mgr":null,"hiredate":"1981-11-17T00:00:00Z","sal":5000,"comm":null,"deptno":10},{"empno":7698,"ename":"BLAKE","job":"MANAGER","mgr":7839,"hiredate":"1981-05-01T00:00:00Z","sal":2850,"comm":null,"deptno":30},{"empno":7782,"ename":"CLARK","job":"MANAGER","mgr":7839,"hiredate":"1981-06-09T00:00:00Z","sal":2450,"comm":null,"deptno":10},{"empno":7566,"ename":"JONES","job":"MANAGER","mgr":7839,"hiredate":"1981-04-02T00:00:00Z","sal":2975,"comm":null,"deptno":20},{"empno":7788,"ename":"SCOTT","job":"ANALYST","mgr":7566,"hiredate":"1982-12-09T00:00:00Z","sal":3000,"comm":null,"deptno":20},{"empno":7902,"ename":"FORD","job":"ANALYST","mgr":7566,"hiredate":"1981-12-03T00:00:00Z","sal":3000,"comm":null,"deptno":20},{"empno":7369,"ename":"SMITH","job":"CLERK","mgr":7902,"hiredate":"1980-12-17T00:00:00Z","sal":800,"comm":null,"deptno":20},{"empno":7499,"ename":"ALLEN","job":"SALESMAN","mgr":7698,"hiredate":"1981-02-20T00:00:00Z","sal":1600,"comm":300,"deptno":30},{"empno":7521,"ename":"WARD","job":"SALESMAN","mgr":7698,"hiredate":"1981-02-22T00:00:00Z","sal":1250,"comm":500,"deptno":30},{"empno":7654,"ename":"MARTIN","job":"SALESMAN","mgr":7698,"hiredate":"1981-09-28T00:00:00Z","sal":1250,"comm":1400,"deptno":30},{"empno":7844,"ename":"TURNER","job":"SALESMAN","mgr":7698,"hiredate":"1981-09-08T00:00:00Z","sal":1500,"comm":0,"deptno":30},{"empno":7876,"ename":"ADAMS","job":"CLERK","mgr":7788,"hiredate":"1983-01-12T00:00:00Z","sal":1100,"comm":null,"deptno":20},{"empno":7900,"ename":"JAMES","job":"CLERK","mgr":7698,"hiredate":"1981-12-03T00:00:00Z","sal":950,"comm":null,"deptno":30},{"empno":7934,"ename":"MILLER","job":"CLERK","mgr":7782,"hiredate":"1982-01-23T00:00:00Z","sal":1300,"comm":null,"deptno":10}]
/// hasMore : false
/// limit : 25
/// offset : 0
/// count : 14
/// links : [{"rel":"self","href":"https://apex.oracle.com/pls/apex/muhammad_usman/testlab/employees"},{"rel":"describedby","href":"https://apex.oracle.com/pls/apex/muhammad_usman/metadata-catalog/testlab/item"},{"rel":"first","href":"https://apex.oracle.com/pls/apex/muhammad_usman/testlab/employees"}]

class OrderBookingModel {
  OrderBookingModel({
      List<Items>? items, 
      bool? hasMore, 
      num? limit, 
      num? offset, 
      num? count, 
      List<Links>? links,}){
    _items = items;
    _hasMore = hasMore;
    _limit = limit;
    _offset = offset;
    _count = count;
    _links = links;
}

  OrderBookingModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _hasMore = json['hasMore'];
    _limit = json['limit'];
    _offset = json['offset'];
    _count = json['count'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
  }
  List<Items>? _items;
  bool? _hasMore;
  num? _limit;
  num? _offset;
  num? _count;
  List<Links>? _links;
OrderBookingModel copyWith({  List<Items>? items,
  bool? hasMore,
  num? limit,
  num? offset,
  num? count,
  List<Links>? links,
}) => OrderBookingModel(  items: items ?? _items,
  hasMore: hasMore ?? _hasMore,
  limit: limit ?? _limit,
  offset: offset ?? _offset,
  count: count ?? _count,
  links: links ?? _links,
);
  List<Items>? get items => _items;
  bool? get hasMore => _hasMore;
  num? get limit => _limit;
  num? get offset => _offset;
  num? get count => _count;
  List<Links>? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['hasMore'] = _hasMore;
    map['limit'] = _limit;
    map['offset'] = _offset;
    map['count'] = _count;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rel : "self"
/// href : "https://apex.oracle.com/pls/apex/muhammad_usman/testlab/employees"

class Links {
  Links({
      String? rel, 
      String? href,}){
    _rel = rel;
    _href = href;
}

  Links.fromJson(dynamic json) {
    _rel = json['rel'];
    _href = json['href'];
  }
  String? _rel;
  String? _href;
Links copyWith({  String? rel,
  String? href,
}) => Links(  rel: rel ?? _rel,
  href: href ?? _href,
);
  String? get rel => _rel;
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rel'] = _rel;
    map['href'] = _href;
    return map;
  }

}

/// empno : 7839
/// ename : "KING"
/// job : "PRESIDENT"
/// mgr : null
/// hiredate : "1981-11-17T00:00:00Z"
/// sal : 5000
/// comm : null
/// deptno : 10

class Items {
  Items({
      num? empno, 
      String? ename, 
      String? job, 
      dynamic mgr, 
      String? hiredate, 
      num? sal, 
      dynamic comm, 
      num? deptno,}){
    _empno = empno;
    _ename = ename;
    _job = job;
    _mgr = mgr;
    _hiredate = hiredate;
    _sal = sal;
    _comm = comm;
    _deptno = deptno;
}

  Items.fromJson(dynamic json) {
    _empno = json['empno'];
    _ename = json['ename'];
    _job = json['job'];
    _mgr = json['mgr'];
    _hiredate = json['hiredate'];
    _sal = json['sal'];
    _comm = json['comm'];
    _deptno = json['deptno'];
  }
  num? _empno;
  String? _ename;
  String? _job;
  dynamic _mgr;
  String? _hiredate;
  num? _sal;
  dynamic _comm;
  num? _deptno;
Items copyWith({  num? empno,
  String? ename,
  String? job,
  dynamic mgr,
  String? hiredate,
  num? sal,
  dynamic comm,
  num? deptno,
}) => Items(  empno: empno ?? _empno,
  ename: ename ?? _ename,
  job: job ?? _job,
  mgr: mgr ?? _mgr,
  hiredate: hiredate ?? _hiredate,
  sal: sal ?? _sal,
  comm: comm ?? _comm,
  deptno: deptno ?? _deptno,
);
  num? get empno => _empno;
  String? get ename => _ename;
  String? get job => _job;
  dynamic get mgr => _mgr;
  String? get hiredate => _hiredate;
  num? get sal => _sal;
  dynamic get comm => _comm;
  num? get deptno => _deptno;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['empno'] = _empno;
    map['ename'] = _ename;
    map['job'] = _job;
    map['mgr'] = _mgr;
    map['hiredate'] = _hiredate;
    map['sal'] = _sal;
    map['comm'] = _comm;
    map['deptno'] = _deptno;
    return map;
  }

}