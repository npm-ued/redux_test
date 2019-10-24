import 'package:flutter/material.dart';

/**
 * State中的所有属性都应该是只读的
 */
@immutable
class CountState {
  final int _count;
  get count => _count;

  CountState(this._count);

  CountState.initState(): _count =0;
}



