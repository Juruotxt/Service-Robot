// Auto-generated. Do not edit!

// (in-package auto_charging.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetChargeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav = null;
      this.ar_track = null;
      this.ar_id = null;
    }
    else {
      if (initObj.hasOwnProperty('nav')) {
        this.nav = initObj.nav
      }
      else {
        this.nav = false;
      }
      if (initObj.hasOwnProperty('ar_track')) {
        this.ar_track = initObj.ar_track
      }
      else {
        this.ar_track = false;
      }
      if (initObj.hasOwnProperty('ar_id')) {
        this.ar_id = initObj.ar_id
      }
      else {
        this.ar_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetChargeRequest
    // Serialize message field [nav]
    bufferOffset = _serializer.bool(obj.nav, buffer, bufferOffset);
    // Serialize message field [ar_track]
    bufferOffset = _serializer.bool(obj.ar_track, buffer, bufferOffset);
    // Serialize message field [ar_id]
    bufferOffset = _serializer.int8(obj.ar_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetChargeRequest
    let len;
    let data = new SetChargeRequest(null);
    // Deserialize message field [nav]
    data.nav = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ar_track]
    data.ar_track = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ar_id]
    data.ar_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_charging/SetChargeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '171717c025d6d110ac13d9375abafd0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool nav
    bool ar_track 
    int8 ar_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetChargeRequest(null);
    if (msg.nav !== undefined) {
      resolved.nav = msg.nav;
    }
    else {
      resolved.nav = false
    }

    if (msg.ar_track !== undefined) {
      resolved.ar_track = msg.ar_track;
    }
    else {
      resolved.ar_track = false
    }

    if (msg.ar_id !== undefined) {
      resolved.ar_id = msg.ar_id;
    }
    else {
      resolved.ar_id = 0
    }

    return resolved;
    }
};

class SetChargeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetChargeResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetChargeResponse
    let len;
    let data = new SetChargeResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'auto_charging/SetChargeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bf829f07d795d3f9e541a07897da2c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    bool success 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetChargeResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetChargeRequest,
  Response: SetChargeResponse,
  md5sum() { return '3584daae5e4de369ae6b70e57de9d866'; },
  datatype() { return 'auto_charging/SetCharge'; }
};
