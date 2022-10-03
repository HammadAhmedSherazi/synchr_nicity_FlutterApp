import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ChatMessageType { text, audio, image, video }

enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final String time;
  final String ImageUrl;
  final bool isSender;

  ChatMessage(
      {required this.text,
      required this.isSender,
      required this.messageStatus,
      required this.messageType,
      required this.ImageUrl,
      required this.time});
}

List demoChatMessage = [
  ChatMessage(
      text: "Hammad Ahmed",
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: false,
      ImageUrl: '',
      time: '11:52 AM'),
  ChatMessage(
      text: "Hey, check this out!!",
      messageStatus: MessageStatus.not_view,
      messageType: ChatMessageType.text,
      isSender: true,
      ImageUrl: 'assets/images/Mask Group 20.jpg',
      time: '11:40 AM'),
  ChatMessage(
      text: "Hammad Ahmed",
      messageStatus: MessageStatus.not_sent,
      messageType: ChatMessageType.text,
      isSender: true,
      ImageUrl: '',
      time: '12:50 AM'),
  ChatMessage(
      text: "",
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.video,
      isSender: false,
      ImageUrl: 'assets/images/Mask Group 20.jpg',
      time: '11:58 AM'),
  ChatMessage(
      text: "Hammad Ahmed",
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: false,
      ImageUrl: '',
      time: '12:50 AM'),
  ChatMessage(
      text: "Hey, check this out!!",
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.image,
      isSender: true,
      ImageUrl: 'assets/images/Mask Group 20.jpg',
      time: '11:32 AM'),
  ChatMessage(
      text: 'sas',
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: false,
      ImageUrl: '',
      time: '11:32 PM'),
      ChatMessage(
      text: 'sas',
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: false,
      ImageUrl: '',
      time: '11:32 AM'),
      ChatMessage(
      text: 'dsdsdsf',
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: true,
      ImageUrl: '',
      time: '11:50 AM'),
      ChatMessage(
      text: 'dsdsdsf',
      messageStatus: MessageStatus.viewed,
      messageType: ChatMessageType.text,
      isSender: false,
      ImageUrl: '',
      time: '11:32 AM'),
];
