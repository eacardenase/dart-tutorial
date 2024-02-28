import 'package:flutter/material.dart';

abstract class Animal {
  final String _name = 'an Animal';

  void method() {
    print('I\'m $_name.');
  }
}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Walker on Animal {
  void walk() {
    super.method();
    print('I can walk.');
  }
}

mixin Swimmer on Animal {
  void swim() {
    super.method();
    print('I can swim.');
  }
}

mixin Flyer on Animal {
  void fly() {
    super.method();
    print('I can fly.');
  }
}

class Dolphin extends Mammal with Swimmer {
  @override
  String get _name => 'a Dolphin';
}

class Bat extends Mammal with Walker, Flyer {
  @override
  String get _name => 'a Bat';
}

class Cat extends Mammal with Walker {
  @override
  String get _name => 'a Cat';
}

class Dove extends Bird with Walker, Flyer {
  @override
  String get _name => 'a Dove';
}

class Duck extends Bird with Walker, Swimmer, Flyer {
  @override
  String get _name => 'a Duck';
}

class Shark extends Fish with Swimmer {
  @override
  String get _name => 'a Shark';
}

class FlyingFish extends Fish with Swimmer, Flyer {
  @override
  String get _name => 'a FlyingFish';
}

class Mixins extends StatelessWidget {
  const Mixins({super.key});

  @override
  Widget build(BuildContext context) {
    Dolphin().swim();

    Bat().walk();
    Bat().fly();

    Cat().walk();

    Dove().walk();
    Dove().fly();

    Duck().walk();
    Duck().swim();
    Duck().fly();

    Shark().swim();

    FlyingFish().swim();
    FlyingFish().fly();

    return const Text('Mixins');
  }
}
