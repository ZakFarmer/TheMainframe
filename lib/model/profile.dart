import 'package:flutter/material.dart';
import '../constants/constant.dart';

class Profile {
  Profile({
    @required this.id,
    @required this.firstName,
    @required this.role,
    @required this.avatar,
    this.lastName,
    this.selected = false,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String role;
  final String avatar;
  bool selected;

  String get fullName => '$firstName $lastName';

  static final List<Profile> _profiles = [];
  static List<Profile> get list => _profiles
    ..add(
      Profile(
        avatar: Assets.zakPng,
        id: 1,
        firstName: 'Zak',
        lastName: '',
        role: 'Admin',
        selected: true,
      ),
    )
    ..add(
      Profile(
        avatar: Assets.casparPng,
        id: 2,
        firstName: 'Caspar',
        lastName: '',
        role: 'Full Access',
      ),
    )
    ..add(
      Profile(
        avatar: Assets.kimPng,
        id: 3,
        firstName: 'Kim',
        lastName: '',
        role: 'Full Access',
      ),
    )
    ..add(
      Profile(
        avatar: Assets.theoPng,
        id: 4,
        firstName: 'Theo',
        lastName: '',
        role: 'Full Access',
      ),
    );
}
