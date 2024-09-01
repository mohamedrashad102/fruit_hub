import 'package:flutter/material.dart';

class AppStyles {
  static const _regular = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
  );

  static const _semiBold = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );

  static const _bold = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );

  static final TextStyle regular12 = _regular.copyWith(
    fontSize: 12,
    color: const Color(0xFF949D9E),
  );
  static final TextStyle regular13 = _regular.copyWith(
    fontSize: 13,
    color: const Color(0xFF949D9E),
  );
  static final TextStyle regular16 = _regular.copyWith(
    fontSize: 16,
    color: const Color(0xFF0C0D0D),
  );

  
  static final TextStyle semiBold12 = _semiBold.copyWith(
    fontSize: 12,
    color: const Color(0xff1b5e37),
  );
  static final TextStyle semiBold13 = _semiBold.copyWith(
    fontSize: 13,
    color: const Color(0xff0c0d0d),
  );
  static final TextStyle semiBold15 = _semiBold.copyWith(
    fontSize: 15,
    color: const Color(0XFF949D9E),
  );
  static final TextStyle semiBold16 = _semiBold.copyWith(
    fontSize: 16,
    color: const Color(0xff1b5e37),
  );

  static final TextStyle bold13 = _bold.copyWith(
    fontSize: 13,
    color: const Color(0xff949d9e),
  );
  static final TextStyle bold16 = _bold.copyWith(
    fontSize: 16,
    color: const Color(0xffffffff),
  );
  static final TextStyle bold19 = _bold.copyWith(
    fontSize: 19,
    color: const Color(0xff0c0d0d),
  );
  static final TextStyle bold23 = _bold.copyWith(
    fontSize: 23,
    color: const Color(0xff0c0d0d),
  );
}
