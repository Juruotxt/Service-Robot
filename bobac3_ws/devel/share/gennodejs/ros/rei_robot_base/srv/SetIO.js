// Auto-generated. Do not edit!

// (in-package rei_robot_base.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.all_off = null;
      this.all_on = null;
      this.io = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('all_off')) {
        this.all_off = initObj.all_off
      }
      else {
        this.all_off = false;
      }
      if (initObj.hasOwnProperty('all_on')) {
        this.all_on = initObj.all_on
      }
      else {
        this.all_on = false;
      }
      if (initObj.hasOwnProperty('io')) {
        this.io = initObj.io
      }
      else {
        this.io = [];
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIORequest
    // Serialize message field [all_off]
    bufferOffset = _serializer.bool(obj.all_off, buffer, bufferOffset);
    // Serialize message field [all_on]
    bufferOffset = _serializer.bool(obj.all_on, buffer, bufferOffset);
    // Serialize message field [io]
    bufferOffset = _arraySerializer.int8(obj.io, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIORequest
    let len;
    let data = new SetIORequest(null);
    // Deserialize message field [all_off]
    data.all_off = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [all_on]
    data.all_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io]
    data.io = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.io.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rei_robot_base/SetIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8108254469eb756f3c04bf3424c3528';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool all_off
    bool all_on 
    int8[] io
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIORequest(null);
    if (msg.all_off !== undefined) {
      resolved.all_off = msg.all_off;
    }
    else {
      resolved.all_off = false
    }

    if (msg.all_on !== undefined) {
      resolved.all_on = msg.all_on;
    }
    else {
      resolved.all_on = false
    }

    if (msg.io !== undefined) {
      resolved.io = msg.io;
    }
    else {
      resolved.io = []
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

class SetIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIOResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIOResponse
    let len;
    let data = new SetIOResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rei_robot_base/SetIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIOResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetIORequest,
  Response: SetIOResponse,
  md5sum() { return '070183f95a96810ab8072eb2bc773618'; },
  datatype() { return 'rei_robot_base/SetIO'; }
};
