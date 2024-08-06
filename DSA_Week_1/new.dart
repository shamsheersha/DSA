// sumInArray(List<int> list,sum){
//   return helper(list,sum,0);
// }

// helper(list,sum,int index){
//   if(index>= list.length){
//     return sum;
//   }else{
//     return helper(list, sum + list[index], index+1);
//   }
// }

// void main(){
//   print(sumInArray([1,2,3,4], 0));
// }

// class Node{
//   int? data;
//   Node? prev;
//   Node? next;

//   Node(this.data);
// }

// class DoublyLinkedList{
//   Node? head;
//   Node? tail;

//   addNode(int data){
//     Node newNode = Node(data);

//     if(head == null){
//       head = newNode;
//     }else{
//       tail?.next = newNode;
//       newNode.prev = tail;
//     }
//     tail = newNode;
//   }

//   deleteNode(int data){
//     Node? temp = head;

//     if(head == null){
//       tail = null;
//       return;
//     }

//     if(head?.data == data){
//       head = temp?.next;
//     }

//     while(temp != null){
//       if(temp.data == data){
//         if(temp.prev != null){
//           temp.prev?.next = temp.next;
//         }else{
//           head = temp.next;
//         }
//         if(temp.next != null){
//           temp.next?.prev = temp.prev;
//         }else{
//           tail = temp.prev;
//         }
//         break;
//       }
//       temp = temp.next;
//     }
//   }

//   displayNode(){
//     Node? temp = head;
//     while(temp != null){
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main(){
//   DoublyLinkedList list = DoublyLinkedList();

//   list.addNode(1);
//   list.addNode(2);
//   list.addNode(3);
//   list.displayNode();
//   print('Deleteing');
//   list.deleteNode(3);
//   list.displayNode();
// }


stringRev(String word){
  if(word.length <= 1){
    return word;
  }else{
    return stringRev(word.substring(1)) + word[0];
  }
}

void main(){
  print(stringRev('word'));
}