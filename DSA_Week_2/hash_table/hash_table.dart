// class HashTable<K, V> {
//   // The number of buckets in the hash table
//   int length;

//   // List of buckets, where each bucket is a list of entries
//   late List<List<Entry<K, V>>> bucket = [];

//   // Constructor to initialize the hash table with a specified number of buckets
//   HashTable({required this.length}) {
//     bucket = List.generate(length, (index) => []);
//   }

//   // Hash function to calculate the index for a given key
//   int hash(K key) {
//     return key.hashCode % length;
//   }

//   // Method to add a key-value pair to the hash table
//   void add(K key, V value) {
//     int index = hash(key);
//     Entry<K, V> entry = Entry(key: key, value: value);

//     // Check if the key already exists in the bucket
//     for (var existingEntry in bucket[index]) {
//       if (existingEntry.key == key) {
//         existingEntry.value = value; // Update the value if the key exists
//         return;
//       }
//     }

//     // Add the new entry if the key does not exist
//     bucket[index].add(entry);
//   }

//   // Method to display all key-value pairs in the hash table
//   void display() {
//     for (var i = 0; i < bucket.length; i++) {
//       print('Bucket ${i + 1}:');
//       for (var entry in bucket[i]) {
//         print('${entry.key}: ${entry.value}');
//       }
//     }
//   }

//   // Method to display only keys in the hash table (fixed the function name and variable naming)
//   void displayKeys() {
//     for (var i = 0; i < bucket.length; i++) {
//       print('Bucket ${i + 1}:');
//       for (var entry in bucket[i]) {
//         print('${entry.key}');
//       }
//     }
//   }
// }

// // Entry class to represent a key-value pair
// class Entry<K, V> {
//   K key;
//   V value;

//   Entry({required this.key, required this.value});
// }

// void main() {
//   // Creating an instance of the HashTable with 2 buckets
//   HashTable<int, int> hashTable = HashTable(length: 2);

//   // Adding key-value pairs to the hash table
//   hashTable.add(4, 2);

//   // Displaying the contents of the hash table
//   hashTable.display();
// }

import 'dart:collection';

class Entry<k, v> {
  final k key;
  v value;

  Entry(this.key, this.value);
  @override
  String toString() {
    return '[$key : $value]';
  }
}

class HashTable<k, v> {
  late List<List<Entry<k, v>>> bucket;

  static const int defaultCapacity = 10;

  HashTable({int capacity = defaultCapacity}) {
    bucket = List<List<Entry<k, v>>>.generate(capacity, (index) => []);
  }

  int hash(k key) {
    return key.hashCode % bucket.length;
  }

  add(k key, v value) {
    int index = hash(key);

    for (var data in bucket[index]) {
      if (data.key == key) {
        data.value = value;
        return;
      }
    }
    bucket[index].add(Entry(key, value));
  }

  v? get(k key) {
    int index = hash(key);

    for (var data in bucket[index]) {
      if (data.key == key) {
        return data.value;
      }
    }
    return null;
  }

  displayTable() {
    for (var i = 0; i < bucket.length; i++) {
      print('Bucket $i : ${bucket[i]}');
    }
  }

  remove(k key) {
    int index = hash(key);
    bucket[index].removeWhere((element) => element.key == key);
  }

  displayBucketAmount() {
    int maxCount = 0;
    int maxCountIndex = 0;

    for (var i = 0; i < bucket.length; i++) {
      int currentCount = bucket[i].length;

      if(currentCount> maxCount){
        maxCount = currentCount;
        maxCountIndex = i;
      }
    }

    print('maximum count from in bucket [${maxCountIndex}] have in $maxCount datas');
  }

  void findDuplicates() {
    Map<v, List<k>> valueToKeysMap = HashMap();

    // Traverse each bucket and populate the map
    for (var bucketList in bucket) {
      for (var entry in bucketList) {
        if (valueToKeysMap.containsKey(entry.value)) {
          valueToKeysMap[entry.value]!.add(entry.key);
        } else {
          valueToKeysMap[entry.value] = [entry.key];
        }
      }
    }

    // Find and print duplicates
    valueToKeysMap.forEach((value, keys) {
      if (keys.length > 1) {
        print('Value $value is duplicated with keys: ${keys.join(', ')}');
      }
    });
  }
}


void main(){
  HashTable table = HashTable();

  table.add('one', 1);
  table.add('two', 2);
  table.add('three', 3);
  table.remove('two');
  table.displayTable();
}