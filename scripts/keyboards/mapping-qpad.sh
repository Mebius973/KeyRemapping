#!/bin/bash

/usr/bin/hidutil property --matching '{"ProductID":0x101}' --set '{"UserKeyMapping":[
    {
        "HIDKeyboardModifierMappingSrc": 0x700000064,
        "HIDKeyboardModifierMappingDst": 0x700000035
    },
    {
        "HIDKeyboardModifierMappingSrc": 0x700000035,
        "HIDKeyboardModifierMappingDst": 0x700000064
    },
    {
        "HIDKeyboardModifierMappingSrc": 0x7000000E2,
        "HIDKeyboardModifierMappingDst": 0x7000000E3
    },
    {
        "HIDKeyboardModifierMappingSrc": 0x7000000E3,
        "HIDKeyboardModifierMappingDst": 0x7000000E3
    }
]}'