import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int likes(UserPostsRecord? post) {
  return post!.likes!.length;
}

bool hasUploadedMedia(String? mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

String minMaxMed() {
  List<int> numbers = [
    43,
    20,
    97,
    3,
    87,
    39,
    79,
    51,
    59,
    44,
    88,
    6,
    75,
    32,
    55,
    72,
    56,
    54,
    91,
    53,
    38,
    49,
    96,
    10,
    58,
    36,
    62,
    33,
    22,
    30,
    12,
    71,
    60,
    21,
    61,
    17,
    76,
    78,
    68,
    42,
    69,
    99,
    45,
    73,
    57,
    11,
    95,
    77,
    23,
    85,
    14,
    27,
    83,
    25,
    26,
    81,
    40,
    28,
    89,
    94,
    50,
    98,
    16,
    41,
    90,
    1,
    9,
    15,
    18,
    86,
    8,
    52,
    48,
    29,
    35,
    37,
    65,
    80,
    70,
    64,
    92,
    7,
    67,
    34,
    19,
    31,
    63,
    5,
    46,
    2,
    84,
    13,
    24,
    66,
    82,
    93,
    47,
    74,
    4
  ];
}
