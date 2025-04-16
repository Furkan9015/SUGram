import 'package:cloud_firestore/cloud_firestore.dart';

class EventModel {
  final String id;
  final String title;
  final String description;
  final DateTime startTime;
  final DateTime endTime;
  final String location;
  final String organizer;
  final String organizerId;
  final String imageUrl;
  final List<String> attendees;
  final List<String> interestedUsers;
  final String category; // Academic, Social, Club, etc.

  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.organizer,
    required this.organizerId,
    this.imageUrl = '',
    this.attendees = const [],
    this.interestedUsers = const [],
    required this.category,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      startTime: (json['startTime'] as Timestamp?)?.toDate() ?? DateTime.now(),
      endTime: (json['endTime'] as Timestamp?)?.toDate() ?? DateTime.now(),
      location: json['location'] ?? '',
      organizer: json['organizer'] ?? '',
      organizerId: json['organizerId'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      attendees: List<String>.from(json['attendees'] ?? []),
      interestedUsers: List<String>.from(json['interestedUsers'] ?? []),
      category: json['category'] ?? 'Other',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'startTime': Timestamp.fromDate(startTime),
      'endTime': Timestamp.fromDate(endTime),
      'location': location,
      'organizer': organizer,
      'organizerId': organizerId,
      'imageUrl': imageUrl,
      'attendees': attendees,
      'interestedUsers': interestedUsers,
      'category': category,
    };
  }
}