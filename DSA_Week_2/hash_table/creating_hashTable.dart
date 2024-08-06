

// class Entry<k, v> {
//   final k key;
//   v value;

//   Entry(this.key, this.value);
//   @override
//   String toString() {
//     return '[$key : $value]';
//   }
// }

// class HashTable<k, v> {
//   late List<List<Entry<k, v>>> bucket;

//   static const int defaultCapacity = 10;

//   HashTable({int capacity = defaultCapacity}) {
//     bucket = List<List<Entry<k, v>>>.generate(capacity, (index) => []);
//   }

//   int hash(k key) {
//     return key.hashCode % bucket.length;
//   }

//   add(k key, v value) {
//     int index = hash(key);

//     for (var entry in bucket[index]) {
//       if (entry.key == key) {
//         entry.value = value;
//         return;
//       }
//     }
//     bucket[index].add(Entry(key, value));
//   }

//   v? get(k key) {
//     int index = hash(key);

//     for (var entry in bucket[index]) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return null;
//   }

//   removeBucket(k key) {
//     int index = hash(key);

//     bucket[index].removeWhere((element) => element.key == key);
//   }

//   bucketCount() {
//     int maxCount = 0;
//     int maxCountIndex = 0;

//     for (var i = 0; i < bucket.length; i++) {
//       int current = bucket[i].length;

//       if (current > maxCount) {
//         maxCount = current;
//         maxCountIndex = i;
//       }
//     }
//     print('Maximum count found from bucket ${maxCountIndex} : ${maxCount}');
//   }

//   displayTable() {
//     for (var i = 0; i < bucket.length; i++) {
//       print('Bucket $i : ${bucket[i]}');
//     }
//   }
// }

// void main() {
//   HashTable table = HashTable();

//   table.add('one', 1);
//   table.add('two', 2);
//   table.add('three', 3);
//   // table.removeBucket('two');
//   table.bucketCount();
//   table.displayTable();
// }

// class Entry<K,V>{
//   final K key;
//   V value;

//   Entry(this.key,this.value);
//   String toString(){
//     return '[$key : $value]';
//   }
// }

// class HashTable<K,V>{
//   late List<List<Entry<K,V>>> bucket;

//   static const int defaultCapacity = 10;

//   HashTable({int capacity = defaultCapacity}){
//     bucket = List<List<Entry<K,V>>>.generate(capacity, (index) => []);
//   }

//   hash(K key){
//     return key.hashCode % bucket.length;
//   }


//   add(K key, V value){
//     int index = hash(key);

//     for(var data in bucket[index]){
//       if(data.key == key){
//         data.value = value;
//       }
//     }
//     bucket[index].add(Entry(key, value));
//   }
//   get(K key){
//     int index = hash(key);

//     for(var data in bucket[index]){
//       if(data.key == key){
//         return data.value;
//       }
//     }
//     print('Not Found');
//   }

//   removeData(K key){
//     int index = hash(key);

//     bucket[index].removeWhere((element) => element.key == key);
//   }

//   display(){
//     for(var i = 0; i < bucket.length; i++){
//       print('[$i : ${bucket[i]}]');
//     }
//   }
  
// }

void main(){
  HashTable table = HashTable();
  table.add('one', 1);
  table.add('two', 2);
  table.add('three', 3);
  table.removeData('two');
  
  table.display();
}


class Entry<k,v>{
  final k key;
  v value;

  Entry(this.key, this.value);
  @override
  String toString(){
    return '[$key : $value]';
  }
}

class HashTable<k,v>{
  late List<List<Entry<k,v>>> bucket;

  static const int defaultCapacity = 10;

  HashTable({int capacity = defaultCapacity}){
    bucket = List<List<Entry<k,v>>>.generate(capacity, (index) => []);
  }

  hash(k key){
    return key.hashCode % bucket.length;
  }

  add(k key, v value){
    int index = hash(key);

    for(var data in bucket[index]){
      if(data.key == key){
        data.value = value;
      }
    }
    bucket[index].add(Entry(key, value));
  }

  get(k key){
    int index = hash(key);
    for(var data in bucket[index]){
      if(data.key == key){
        return data.value;
      }
    }
    print('Not Found');
  }

  removeData(k key){
    int index = hash(key);

    bucket[index].removeWhere((element) => element.key == key);
  }
  display(){
    for(var i = 0; i < bucket.length; i++){
      print('[Bucket ${i} : ${bucket[i]}]');
    }
  }
}