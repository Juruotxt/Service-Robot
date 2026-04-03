// Auto-generated. Do not edit!

// (in-package rei_robot_cruise.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetNavOrderRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loop_time = null;
      this.goal_order = null;
      this.callback_order = null;
    }
    else {
      if (initObj.hasOwnProperty('loop_time')) {
        this.loop_time = initObj.loop_time
      }
      else {
        this.loop_time = 0;
      }
      if (initObj.hasOwnProperty('goal_order')) {
        this.goal_order = initObj.goal_order
      }
      else {
        this.goal_order = [];
      }
      if (initObj.hasOwnProperty('callback_order')) {
        this.callback_order = initObj.callback_order
      }
      else {
        this.callback_order = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavOrderRequest
    // Serialize message field [loop_time]
    bufferOffset = _serializer.int16(obj.loop_time, buffer, bufferOffset);
    // Serialize message field [goal_order]
    bufferOffset = _arraySerializer.string(obj.goal_order, buffer, bufferOffset, null);
    // Serialize message field [callback_order]
    bufferOffset = _arraySerializer.string(obj.callback_order, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavOrderRequest
    let len;
    let data = new SetNavOrderRequest(null);
    // Deserialize message field [loop_time]
    data.loop_time = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [goal_order]
    data.goal_order = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [callback_order]
    data.callback_order = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.goal_order.forEach((val) => {
      length += 4 + val.length;
    });
    object.callback_order.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rei_robot_cruise/SetNavOrderRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d3b07d1f11bc648bfe2a035409e32ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 loop_time #0 means infinite
    string[] goal_order
    string[] callback_order
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetNavOrderRequest(null);
    if (msg.loop_time !== undefined) {
      resolved.loop_time = msg.loop_time;
    }
    else {
      resolved.loop_time = 0
    }

    if (msg.goal_order !== undefined) {
      resolved.goal_order = msg.goal_order;
    }
    else {
      resolved.goal_order = []
    }

    if (msg.callback_order !== undefined) {
      resolved.callback_order = msg.callback_order;
    }
    else {
      resolved.callback_order = []
    }

    return resolved;
    }
};

class SetNavOrderResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.isSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('isSuccess')) {
        this.isSuccess = initObj.isSuccess
      }
      else {
        this.isSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavOrderResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [isSuccess]
    bufferOffset = _serializer.bool(obj.isSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavOrderResponse
    let len;
    let data = new SetNavOrderResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [isSuccess]
    data.isSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rei_robot_cruise/SetNavOrderResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d6a17e315b493a32a82070425a28084';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    bool isSuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetNavOrderResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.isSuccess !== undefined) {
      resolved.isSuccess = msg.isSuccess;
    }
    else {
      resolved.isSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetNavOrderRequest,
  Response: SetNavOrderResponse,
  md5sum() { return '40f5672c1f1f412d28deb80740b471de'; },
  datatype() { return 'rei_robot_cruise/SetNavOrder'; }
};
