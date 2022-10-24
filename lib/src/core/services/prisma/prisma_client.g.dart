// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateUser _$AggregateUserFromJson(Map<String, dynamic> json) =>
    AggregateUser(
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUserToJson(AggregateUser instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      imageProfile: json['imageProfile'] as String?,
      phone: json['phone'] as String?,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
        UserGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.NONBINARY: 'NONBINARY',
};

AggregateAddress _$AggregateAddressFromJson(Map<String, dynamic> json) =>
    AggregateAddress(
      $count: json['_count'] == null
          ? null
          : AddressCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AddressMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AddressMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateAddressToJson(AggregateAddress instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AddressGroupByOutputType _$AddressGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AddressGroupByOutputType(
      id: json['id'] as String,
      street: json['street'] as String,
      number: json['number'] as String,
      neighborhood: json['neighborhood'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      userId: json['userId'] as String,
      groupId: json['groupId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : AddressCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AddressMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AddressMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressGroupByOutputTypeToJson(
        AddressGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateFriend _$AggregateFriendFromJson(Map<String, dynamic> json) =>
    AggregateFriend(
      $count: json['_count'] == null
          ? null
          : FriendCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FriendMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FriendMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateFriendToJson(AggregateFriend instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

FriendGroupByOutputType _$FriendGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FriendGroupByOutputType(
      id: json['id'] as String,
      userId: json['userId'] as String,
      participantId: json['participantId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : FriendCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : FriendMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : FriendMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FriendGroupByOutputTypeToJson(
        FriendGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateParticipant _$AggregateParticipantFromJson(
        Map<String, dynamic> json) =>
    AggregateParticipant(
      $count: json['_count'] == null
          ? null
          : ParticipantCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ParticipantMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ParticipantMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateParticipantToJson(
        AggregateParticipant instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ParticipantGroupByOutputType _$ParticipantGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ParticipantGroupByOutputType(
      id: json['id'] as String,
      userId: json['userId'] as String,
      groupId: json['groupId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : ParticipantCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ParticipantMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ParticipantMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParticipantGroupByOutputTypeToJson(
        ParticipantGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateLocation _$AggregateLocationFromJson(Map<String, dynamic> json) =>
    AggregateLocation(
      $count: json['_count'] == null
          ? null
          : LocationCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : LocationMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : LocationMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateLocationToJson(AggregateLocation instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

LocationGroupByOutputType _$LocationGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LocationGroupByOutputType(
      id: json['id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      groupId: json['groupId'] as String,
      $count: json['_count'] == null
          ? null
          : LocationCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : LocationMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : LocationMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationGroupByOutputTypeToJson(
        LocationGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'groupId': instance.groupId,
      '_count': instance.$count?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateGroup _$AggregateGroupFromJson(Map<String, dynamic> json) =>
    AggregateGroup(
      $count: json['_count'] == null
          ? null
          : GroupCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : GroupAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : GroupSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : GroupMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : GroupMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateGroupToJson(AggregateGroup instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

GroupGroupByOutputType _$GroupGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupGroupByOutputType(
      id: json['id'] as String,
      name: json['name'] as String,
      imageGroup: json['imageGroup'] as String?,
      ownerId: json['ownerId'] as String,
      drawDate: DateTime.parse(json['drawDate'] as String),
      suggestedValue: (json['suggestedValue'] as num).toDouble(),
      eventDate: DateTime.parse(json['eventDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : GroupCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : GroupAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : GroupSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : GroupMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : GroupMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupGroupByOutputTypeToJson(
        GroupGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageGroup': instance.imageGroup,
      'ownerId': instance.ownerId,
      'drawDate': instance.drawDate.toIso8601String(),
      'suggestedValue': instance.suggestedValue,
      'eventDate': instance.eventDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

UserCountOutputType _$UserCountOutputTypeFromJson(Map<String, dynamic> json) =>
    UserCountOutputType(
      groups: json['groups'] as int,
      participants: json['participants'] as int,
      friends: json['friends'] as int,
    );

Map<String, dynamic> _$UserCountOutputTypeToJson(
        UserCountOutputType instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'participants': instance.participants,
      'friends': instance.friends,
    };

UserCountAggregateOutputType _$UserCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      name: json['name'] as int,
      password: json['password'] as int,
      imageProfile: json['imageProfile'] as int,
      phone: json['phone'] as int,
      gender: json['gender'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UserCountAggregateOutputTypeToJson(
        UserCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'phone': instance.phone,
      'gender': instance.gender,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

UserMinAggregateOutputType _$UserMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMinAggregateOutputType(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      imageProfile: json['imageProfile'] as String?,
      phone: json['phone'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserMinAggregateOutputTypeToJson(
        UserMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UserMaxAggregateOutputType _$UserMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMaxAggregateOutputType(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      imageProfile: json['imageProfile'] as String?,
      phone: json['phone'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserMaxAggregateOutputTypeToJson(
        UserMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

AddressCountAggregateOutputType _$AddressCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AddressCountAggregateOutputType(
      id: json['id'] as int,
      street: json['street'] as int,
      number: json['number'] as int,
      neighborhood: json['neighborhood'] as int,
      city: json['city'] as int,
      state: json['state'] as int,
      zipCode: json['zipCode'] as int,
      userId: json['userId'] as int,
      groupId: json['groupId'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$AddressCountAggregateOutputTypeToJson(
        AddressCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

AddressMinAggregateOutputType _$AddressMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AddressMinAggregateOutputType(
      id: json['id'] as String?,
      street: json['street'] as String?,
      number: json['number'] as String?,
      neighborhood: json['neighborhood'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      userId: json['userId'] as String?,
      groupId: json['groupId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AddressMinAggregateOutputTypeToJson(
        AddressMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

AddressMaxAggregateOutputType _$AddressMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AddressMaxAggregateOutputType(
      id: json['id'] as String?,
      street: json['street'] as String?,
      number: json['number'] as String?,
      neighborhood: json['neighborhood'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      userId: json['userId'] as String?,
      groupId: json['groupId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AddressMaxAggregateOutputTypeToJson(
        AddressMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

FriendCountAggregateOutputType _$FriendCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FriendCountAggregateOutputType(
      id: json['id'] as int,
      userId: json['userId'] as int,
      participantId: json['participantId'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$FriendCountAggregateOutputTypeToJson(
        FriendCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

FriendMinAggregateOutputType _$FriendMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FriendMinAggregateOutputType(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      participantId: json['participantId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FriendMinAggregateOutputTypeToJson(
        FriendMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

FriendMaxAggregateOutputType _$FriendMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    FriendMaxAggregateOutputType(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      participantId: json['participantId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FriendMaxAggregateOutputTypeToJson(
        FriendMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ParticipantCountAggregateOutputType
    _$ParticipantCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        ParticipantCountAggregateOutputType(
          id: json['id'] as int,
          userId: json['userId'] as int,
          groupId: json['groupId'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$ParticipantCountAggregateOutputTypeToJson(
        ParticipantCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

ParticipantMinAggregateOutputType _$ParticipantMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ParticipantMinAggregateOutputType(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      groupId: json['groupId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ParticipantMinAggregateOutputTypeToJson(
        ParticipantMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ParticipantMaxAggregateOutputType _$ParticipantMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ParticipantMaxAggregateOutputType(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      groupId: json['groupId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ParticipantMaxAggregateOutputTypeToJson(
        ParticipantMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

LocationCountAggregateOutputType _$LocationCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LocationCountAggregateOutputType(
      id: json['id'] as int,
      latitude: json['latitude'] as int,
      longitude: json['longitude'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      groupId: json['groupId'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$LocationCountAggregateOutputTypeToJson(
        LocationCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'groupId': instance.groupId,
      '_all': instance.$all,
    };

LocationMinAggregateOutputType _$LocationMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LocationMinAggregateOutputType(
      id: json['id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$LocationMinAggregateOutputTypeToJson(
        LocationMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupId': instance.groupId,
    };

LocationMaxAggregateOutputType _$LocationMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LocationMaxAggregateOutputType(
      id: json['id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$LocationMaxAggregateOutputTypeToJson(
        LocationMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupId': instance.groupId,
    };

GroupCountOutputType _$GroupCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupCountOutputType(
      participant: json['participant'] as int,
    );

Map<String, dynamic> _$GroupCountOutputTypeToJson(
        GroupCountOutputType instance) =>
    <String, dynamic>{
      'participant': instance.participant,
    };

GroupCountAggregateOutputType _$GroupCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      imageGroup: json['imageGroup'] as int,
      ownerId: json['ownerId'] as int,
      drawDate: json['drawDate'] as int,
      suggestedValue: json['suggestedValue'] as int,
      eventDate: json['eventDate'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$GroupCountAggregateOutputTypeToJson(
        GroupCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageGroup': instance.imageGroup,
      'ownerId': instance.ownerId,
      'drawDate': instance.drawDate,
      'suggestedValue': instance.suggestedValue,
      'eventDate': instance.eventDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

GroupAvgAggregateOutputType _$GroupAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupAvgAggregateOutputType(
      suggestedValue: (json['suggestedValue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GroupAvgAggregateOutputTypeToJson(
        GroupAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'suggestedValue': instance.suggestedValue,
    };

GroupSumAggregateOutputType _$GroupSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupSumAggregateOutputType(
      suggestedValue: (json['suggestedValue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GroupSumAggregateOutputTypeToJson(
        GroupSumAggregateOutputType instance) =>
    <String, dynamic>{
      'suggestedValue': instance.suggestedValue,
    };

GroupMinAggregateOutputType _$GroupMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupMinAggregateOutputType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageGroup: json['imageGroup'] as String?,
      ownerId: json['ownerId'] as String?,
      drawDate: json['drawDate'] == null
          ? null
          : DateTime.parse(json['drawDate'] as String),
      suggestedValue: (json['suggestedValue'] as num?)?.toDouble(),
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GroupMinAggregateOutputTypeToJson(
        GroupMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageGroup': instance.imageGroup,
      'ownerId': instance.ownerId,
      'drawDate': instance.drawDate?.toIso8601String(),
      'suggestedValue': instance.suggestedValue,
      'eventDate': instance.eventDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

GroupMaxAggregateOutputType _$GroupMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    GroupMaxAggregateOutputType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageGroup: json['imageGroup'] as String?,
      ownerId: json['ownerId'] as String?,
      drawDate: json['drawDate'] == null
          ? null
          : DateTime.parse(json['drawDate'] as String),
      suggestedValue: (json['suggestedValue'] as num?)?.toDouble(),
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GroupMaxAggregateOutputTypeToJson(
        GroupMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageGroup': instance.imageGroup,
      'ownerId': instance.ownerId,
      'drawDate': instance.drawDate?.toIso8601String(),
      'suggestedValue': instance.suggestedValue,
      'eventDate': instance.eventDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      imageProfile: json['imageProfile'] as String?,
      phone: json['phone'] as String?,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'imageProfile': instance.imageProfile,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as String,
      street: json['street'] as String,
      number: json['number'] as String,
      neighborhood: json['neighborhood'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      userId: json['userId'] as String,
      groupId: json['groupId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'number': instance.number,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Friend _$FriendFromJson(Map<String, dynamic> json) => Friend(
      id: json['id'] as String,
      userId: json['userId'] as String,
      participantId: json['participantId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FriendToJson(Friend instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'participantId': instance.participantId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
      id: json['id'] as String,
      userId: json['userId'] as String,
      groupId: json['groupId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      groupId: json['groupId'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'groupId': instance.groupId,
    };

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      id: json['id'] as String,
      name: json['name'] as String,
      imageGroup: json['imageGroup'] as String?,
      ownerId: json['ownerId'] as String,
      drawDate: DateTime.parse(json['drawDate'] as String),
      suggestedValue: (json['suggestedValue'] as num).toDouble(),
      eventDate: DateTime.parse(json['eventDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageGroup': instance.imageGroup,
      'ownerId': instance.ownerId,
      'drawDate': instance.drawDate.toIso8601String(),
      'suggestedValue': instance.suggestedValue,
      'eventDate': instance.eventDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
