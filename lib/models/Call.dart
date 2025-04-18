/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Call type in your schema. */
class Call extends amplify_core.Model {
  static const classType = const _CallModelType();
  final String id;
  final User? _caller;
  final User? _called;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CallModelIdentifier get modelIdentifier {
      return CallModelIdentifier(
        id: id
      );
  }
  
  User? get caller {
    return _caller;
  }
  
  User? get called {
    return _called;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Call._internal({required this.id, caller, called, createdAt, updatedAt}): _caller = caller, _called = called, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Call({String? id, User? caller, User? called}) {
    return Call._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      caller: caller,
      called: called);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Call &&
      id == other.id &&
      _caller == other._caller &&
      _called == other._called;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Call {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("caller=" + (_caller != null ? _caller!.toString() : "null") + ", ");
    buffer.write("called=" + (_called != null ? _called!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Call copyWith({User? caller, User? called}) {
    return Call._internal(
      id: id,
      caller: caller ?? this.caller,
      called: called ?? this.called);
  }
  
  Call copyWithModelFieldValues({
    ModelFieldValue<User?>? caller,
    ModelFieldValue<User?>? called
  }) {
    return Call._internal(
      id: id,
      caller: caller == null ? this.caller : caller.value,
      called: called == null ? this.called : called.value
    );
  }
  
  Call.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _caller = json['caller'] != null
        ? json['caller']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['caller']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['caller']))
        : null,
      _called = json['called'] != null
        ? json['called']['serializedData'] != null
          ? User.fromJson(new Map<String, dynamic>.from(json['called']['serializedData']))
          : User.fromJson(new Map<String, dynamic>.from(json['called']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'caller': _caller?.toJson(), 'called': _called?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'caller': _caller,
    'called': _called,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CallModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CallModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CALLER = amplify_core.QueryField(
    fieldName: "caller",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final CALLED = amplify_core.QueryField(
    fieldName: "called",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Call";
    modelSchemaDefinition.pluralName = "Calls";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id"], name: null)
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Call.CALLER,
      isRequired: false,
      targetNames: ['callerId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Call.CALLED,
      isRequired: false,
      targetNames: ['calledId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _CallModelType extends amplify_core.ModelType<Call> {
  const _CallModelType();
  
  @override
  Call fromJson(Map<String, dynamic> jsonData) {
    return Call.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Call';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Call] in your schema.
 */
class CallModelIdentifier implements amplify_core.ModelIdentifier<Call> {
  final String id;

  /** Create an instance of CallModelIdentifier using [id] the primary key. */
  const CallModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'CallModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CallModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}