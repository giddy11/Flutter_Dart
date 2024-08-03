


void practice1() {
  //polymorphism
  // Animal cat = Cat();
  // cat.sound();
  // cat = Dog();
  // cat.sound();

  //abstraction
  // Animal anim = Cat();
  // anim.sound();
  // Animal anim2 = Dog();
  // anim2.sound();

  //mixin
  // final anim = Animal();
  // anim.fn();

  //class modifiers
  Animal anim = Cat();

  switch (anim) {
    case Dog():
      print("dog");
      break;
    case Cat():
      print("cat");
      break;
    case Human():
      print("human");
      break;
    default:
  }
}

// ignore: slash_for_doc_comments
/**
 * Polymorphism: the ability of an object to take many forms
 * this is achieved by inheritance and method overriding
 */
// class Animal {
//   void sound(){
//     print("Animal making sound");
//   }
// }

// class Cat extends Animal {
//   @override
//   void sound(){
//     print("Cat making sound");
//   }
// }

// class Dog extends Animal {
//   @override
//   void sound(){
//     print("Dog making sound");
//   }
// }


// ignore: slash_for_doc_comments
/**
 * Abstraction: this is hiding the important details and complexity of
 * an object and only exposing the essential features and functionalities
 * Abstract classes cannot be instantiated
 */
// abstract class Animal {
//   void sound();
// }

// class Cat extends Animal {
//   @override
//   void sound(){
//     print("Cat making sound");
//   }
// }

// class Dog extends Animal {
//   @override
//   void sound(){
//     print("Dog making sound");
//   }
// }


// ignore: slash_for_doc_comments
/**
 * Encapsulation: this is the bundling of data and methods together as
 * a single units and the data is hidden from the outside world.
 * it supports the principle of data hiding ie public / private accessors
 */
// class _Person {
//   void _getName(){
//     print("Good name");
//   }

//   String _name;
// }


// ignore: slash_for_doc_comments
/**
 * mixin: this mixes in the properties of the class that youre mixing
 * it with in the class
 * it is not establishing a parent child relationship as in inheritance
 * it just provides reusability of properties anywhere else
 * to convert a class to a mixin, use mixin before the class keyword.
 * A class can have multiple mixins
 */
// mixin Jump {
//   int jumping = 10;
// }

// class Animal with Jump {
//   void fn() {
//     print(jumping);
//   }
// }


// ignore: slash_for_doc_comments
/**
 * sealed class: the sealed class is implicitly abstract
 * it prevents other class from inheriting or extending the class outside of the
 * same library except in the same library.
 * It cannot be a constructor
 * 
 * The final is similar to the sealed.
 * it can be a constructor Animal()
 * 
 * base class cannot be implemented but can be extended.
 * any class that is extending the base class must be either sealed, final
 * or base.
 * The above applies for final and sealed.
 * The cool thing is that the constructor of the base class is called by the class
 * that extends it.
 * 
 * interface class can only be implemented.
 * to make it a true interface class so you dont get to crate an instance of an interface
 * class, you do this: abstract interface class .....
 * 
 * mixin class
 */
sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}





