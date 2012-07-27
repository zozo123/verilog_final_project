# DATA derived from module simple0 !!!!!!!!!!!!!!!!
#=================================
# Module simple0 statistics 
#=================================
# Number of nets (inc ports)       :    13
# Number of ports                  :     6
# Number of cells                  :     9
# Number of cells pins             :    23
#=================================
# CELLS encoding struct, net name to net index 
#=================================
$CELLS_ENCODING1 = {
                     'or1' => 6,
                     'nadav' => 3,
                     'and1' => 0,
                     'yosefi' => 8,
                     'or2' => 7,
                     'buf1' => 1,
                     'not1' => 5,
                     'hasidim' => 2,
                     'nor1' => 4
                   };
#=================================
# CELLS encoding struct reversed, net index to net name 
#=================================
$CELLS_ENCODING_REVERSE1 = {
                             '6' => 'or1',
                             '3' => 'nadav',
                             '7' => 'or2',
                             '2' => 'hasidim',
                             '8' => 'yosefi',
                             '1' => 'buf1',
                             '4' => 'nor1',
                             '0' => 'and1',
                             '5' => 'not1'
                           };
#=================================
# NETS encoding struct, net name to net index 
#=================================
$NETS_ENCODING1 = {
                    'e' => 4,
                    'o2' => 12,
                    'a' => 0,
                    'd' => 3,
                    'n1' => 10,
                    'j3' => 9,
                    'o1' => 11,
                    'j2' => 8,
                    'c' => 2,
                    'j1' => 7,
                    'b' => 1,
                    'g' => 6,
                    'f' => 5
                  };
#=================================
# NETS encoding struct reversed, net index to net name 
#=================================
$NETS_ENCODING_REVERSE1 = {
                            '6' => 'g',
                            '11' => 'o1',
                            '3' => 'd',
                            '7' => 'j1',
                            '9' => 'j3',
                            '12' => 'o2',
                            '2' => 'c',
                            '8' => 'j2',
                            '1' => 'b',
                            '4' => 'e',
                            '0' => 'a',
                            '10' => 'n1',
                            '5' => 'f'
                          };
#=================================
# PORTS struct 
#=================================
$PORTS1 = {
            'o2' => 'output',
            'o1' => 'output',
            'c' => 'input',
            'a' => 'input',
            'b' => 'input',
            'd' => 'input'
          };
#=================================
# CELLS struct 
#=================================
$CELLS1 = {
            'or1' => {
                       'pins' => {
                                   'pin2' => {
                                               'b' => 3
                                             },
                                   'pin0' => {
                                               'and1/pin1' => 'e',
                                               'or2/pin1' => 'e'
                                             },
                                   'pin1' => {
                                               'a' => 3
                                             }
                                 },
                       'prim_delay' => '1.132',
                       'pin_string' => 'e,a,b',
                       'prim_type' => 'or'
                     },
            'and1' => {
                        'pins' => {
                                    'pin2' => {
                                                'c' => 3
                                              },
                                    'pin0' => {
                                                'nor1/pin1' => 'f'
                                              },
                                    'pin1' => {
                                                'or1/pin0' => 'e'
                                              }
                                  },
                        'prim_delay' => '0.225',
                        'pin_string' => 'f,e,c',
                        'prim_type' => 'and'
                      },
            'nadav' => {
                         'pins' => {
                                     'pin0' => {
                                                 'hasidim/pin1' => 'j2'
                                               },
                                     'pin1' => {
                                                 'a' => 3
                                               }
                                   },
                         'prim_delay' => '0.80',
                         'pin_string' => 'j2,a',
                         'prim_type' => 'buf'
                       },
            'or2' => {
                       'pins' => {
                                   'pin2' => {
                                               'd' => 3
                                             },
                                   'pin0' => {
                                               'not1/pin1' => 'n1',
                                               'buf1/pin1' => 'n1'
                                             },
                                   'pin1' => {
                                               'or1/pin0' => 'e'
                                             }
                                 },
                       'prim_delay' => '1.01',
                       'pin_string' => 'n1,e,d',
                       'prim_type' => 'or'
                     },
            'yosefi' => {
                          'pins' => {
                                      'pin0' => {
                                                  'hasidim/pin2' => 'j1'
                                                },
                                      'pin1' => {
                                                  'a' => 3
                                                }
                                    },
                          'prim_delay' => '0.80',
                          'pin_string' => 'j1,a',
                          'prim_type' => 'not'
                        },
            'buf1' => {
                        'pins' => {
                                    'pin0' => {
                                                'o2' => 4
                                              },
                                    'pin1' => {
                                                'or2/pin0' => 'n1'
                                              }
                                  },
                        'prim_delay' => '0.321',
                        'pin_string' => 'o2,n1',
                        'prim_type' => 'buf'
                      },
            'not1' => {
                        'pins' => {
                                    'pin0' => {
                                                'nor1/pin2' => 'g'
                                              },
                                    'pin1' => {
                                                'or2/pin0' => 'n1'
                                              }
                                  },
                        'prim_delay' => '0.340',
                        'pin_string' => 'g,n1',
                        'prim_type' => 'not'
                      },
            'nor1' => {
                        'pins' => {
                                    'pin2' => {
                                                'not1/pin0' => 'g'
                                              },
                                    'pin0' => {
                                                'o1' => 4
                                              },
                                    'pin1' => {
                                                'and1/pin0' => 'f'
                                              }
                                  },
                        'prim_delay' => '0.646',
                        'pin_string' => 'o1,f,g',
                        'prim_type' => 'nor'
                      },
            'hasidim' => {
                           'pins' => {
                                       'pin2' => {
                                                   'yosefi/pin0' => 'j1'
                                                 },
                                       'pin1' => {
                                                   'nadav/pin0' => 'j2'
                                                 }
                                     },
                           'prim_delay' => '0.20',
                           'pin_string' => 'j3,j2,j1',
                           'prim_type' => 'and'
                         }
          };
#=================================
# NETS struct 
#=================================
$NETS1 = {
           'e' => {
                    'and1/pin1' => 1,
                    'or2/pin1' => 1,
                    'or1/pin0' => 1
                  },
           'o2' => {
                     'buf1/pin0' => 1
                   },
           'a' => {
                    'nadav/pin1' => 1,
                    'yosefi/pin1' => 1,
                    'or1/pin1' => 1
                  },
           'd' => {
                    'or2/pin2' => 1
                  },
           'n1' => {
                     'not1/pin1' => 1,
                     'buf1/pin1' => 1,
                     'or2/pin0' => 1
                   },
           'j3' => {
                     'hasidim/pin0' => 1
                   },
           'j2' => {
                     'nadav/pin0' => 1,
                     'hasidim/pin1' => 1
                   },
           'o1' => {
                     'nor1/pin0' => 1
                   },
           'c' => {
                    'and1/pin2' => 1
                  },
           'j1' => {
                     'yosefi/pin0' => 1,
                     'hasidim/pin2' => 1
                   },
           'g' => {
                    'nor1/pin2' => 1,
                    'not1/pin0' => 1
                  },
           'b' => {
                    'or1/pin2' => 1
                  },
           'f' => {
                    'nor1/pin1' => 1,
                    'and1/pin0' => 1
                  }
         };
#=================================
# PINS struct 
#=================================
$PINS1 = {
           'not1/pin1' => 1,
           'nadav/pin0' => 1,
           'hasidim/pin2' => 1,
           'and1/pin2' => 1,
           'or1/pin1' => 1,
           'or1/pin0' => 1,
           'nadav/pin1' => 1,
           'buf1/pin0' => 1,
           'or1/pin2' => 1,
           'or2/pin0' => 1,
           'buf1/pin1' => 1,
           'and1/pin0' => 1,
           'not1/pin0' => 1,
           'and1/pin1' => 1,
           'nor1/pin1' => 1,
           'hasidim/pin1' => 1,
           'or2/pin2' => 1,
           'or2/pin1' => 1,
           'nor1/pin2' => 1,
           'nor1/pin0' => 1,
           'yosefi/pin0' => 1,
           'hasidim/pin0' => 1,
           'yosefi/pin1' => 1
         };
1;

